using Apposite.Application.Commands.User;
using Apposite.Application.Mapping;
using Apposite.Application.Services;
using Apposite.Application.Services.TokenService;
using Apposite.Core.Dtos;
using Apposite.Domain.Entities;
using Apposite.Persistence;
using MediatR;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace Apposite.Application.Handlers.User
{
    public class UserCommandHandler : IRequestHandler<CreatePersonalInfoCommand, Response<NoContent>>,
                                      IRequestHandler<DeleteUserCommand, Response<NoContent>>
    {
        private readonly AppositeDbContext _dbContext;
        private readonly UserManager<Apposite.Domain.Entities.User> _userManager;
        private readonly RedisService _redisService;
        private readonly ITokenService _tokenService;

        public UserCommandHandler(AppositeDbContext dbContext, RedisService redisService, ITokenService tokenService, UserManager<Domain.Entities.User> userManager)
        {
            _dbContext = dbContext;
            _redisService = redisService;
            _tokenService = tokenService;
            _userManager = userManager;
        }

        public async Task<Response<NoContent>> Handle(CreatePersonalInfoCommand request, CancellationToken cancellationToken)
        {
            var userId = _tokenService.GetUserId();
            if (userId.ToString() == "")
                return Response<NoContent>.Fail(404, "User Not Found");

            var userIngredients = new List<UserIngredient>();
            foreach (var ingredient in request.Ingredients)
            {
                var userIngredient = new UserIngredient
                {
                    UserId = userId,
                    IngredientId = ingredient,
                };
                userIngredients.Add(userIngredient);
            }

            var userCuisines = new List<UserCuisinePreference>();
            foreach (var cuisine in request.Cuisines)
            {
                var userCuisine = new UserCuisinePreference
                {
                    UserId = userId,
                    CuisinePreferenceId = cuisine,
                };
                userCuisines.Add(userCuisine);
            }

            var userHealth = new List<UserHealth>();
            foreach (var health in request.Healths)
            {
                var tempUserHealth = new UserHealth
                {
                    UserId = userId,
                    HealthId = health,
                };
                userHealth.Add(tempUserHealth);
            }


            await _dbContext.UserIngredients.AddRangeAsync(userIngredients, cancellationToken);
            await _dbContext.UserCuisinePreferences.AddRangeAsync(userCuisines, cancellationToken);
            await _dbContext.UserHealths.AddRangeAsync(userHealth, cancellationToken);
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(DeleteUserCommand request, CancellationToken cancellationToken)
        {
            var userId = _tokenService.GetUserId();
            if (userId.ToString() == "")
                return Response<NoContent>.Fail(404, "User Not Found");

            var user = _dbContext.Users.Where(x => x.Id == userId).FirstOrDefault();
            if (user == null)
                return Response<NoContent>.Fail(404, "User Not Found");

            var airecipes = await _dbContext.AiRecipes.Where(x => x.UserId == userId).ToListAsync();
            await _dbContext.AiIngredients.Where(x => airecipes.Select(x => x.Id).ToList().Contains(x.AiRecipeId)).ExecuteDeleteAsync();
            await _dbContext.AiInstructions.Where(x => airecipes.Select(x => x.Id).ToList().Contains(x.AiRecipeId)).ExecuteDeleteAsync();
            _dbContext.AiRecipes.RemoveRange(airecipes);


            var recipes = await _dbContext.Recipes.Where(x => x.UserId == userId).ToListAsync();
            await _dbContext.RecipeIngredients.Where(x => recipes.Select(x => x.Id).ToList().Contains(x.RecipeId)).ExecuteDeleteAsync();
            await _dbContext.RecipeSteps.Where(x => recipes.Select(x => x.Id).ToList().Contains(x.RecipeId)).ExecuteDeleteAsync();
            _dbContext.Recipes.RemoveRange(recipes);

            await _dbContext.UserCuisinePreferences.Where(x => x.UserId == userId).ExecuteDeleteAsync();
            await _dbContext.UserHealths.Where(x => x.UserId == userId).ExecuteDeleteAsync();
            await _dbContext.UserIngredients.Where(x => x.UserId == userId).ExecuteDeleteAsync();

            await _dbContext.SaveChangesAsync();

            await _userManager.DeleteAsync(user);

            return Response<NoContent>.Success(204);
        }
    }
}
