
using Apposite.Application.Commands.Recipe;
using Apposite.Application.Dto.Recipe;
using Apposite.Application.Mapping;
using Apposite.Application.Services.TokenService;
using Apposite.Core.Dtos;
using Apposite.Domain.Entities;
using Apposite.Persistence;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Apposite.Application.Handlers.Recipe
{
    public class RecipeCommandHandler : IRequestHandler<CreateRecipeCommand, Response<NoContent>>,
                                        IRequestHandler<UpdateRecipeCommand, Response<NoContent>>,
                                        IRequestHandler<DeleteRecipeCommand, Response<NoContent>>
    {
        private readonly AppositeDbContext _dbContext;
        private readonly ITokenService _tokenService;


        public RecipeCommandHandler(AppositeDbContext dbContext, ITokenService tokenService)
        {
            _dbContext = dbContext;
            _tokenService = tokenService;
        }

        public async Task<Response<NoContent>> Handle(CreateRecipeCommand request, CancellationToken cancellationToken)
        {
            var userId = _tokenService.GetUserId();

            var user = _dbContext.Users.FirstOrDefault(x => x.Id == userId);

            if (user == null)
                return Response<NoContent>.Fail(404, "User not found");

            // Recipe
            var recipe = ObjectMapper.Mapper.Map<Domain.Entities.Recipe>(request);
            recipe.UserId = userId;
            await _dbContext.Recipes.AddAsync(recipe, cancellationToken);



            await _dbContext.SaveChangesAsync(cancellationToken);
            return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(UpdateRecipeCommand request, CancellationToken cancellationToken)
        {
            var recipe = await _dbContext.Recipes.FirstOrDefaultAsync(x => x.Id == request.Id, cancellationToken);
            if (recipe == null)
            {
                return Response<NoContent>.Fail(404, "Recipe not found.");
            }

            var updatedRecipe = ObjectMapper.Mapper.Map(request, recipe);
            _dbContext.Recipes.Update(updatedRecipe);
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(DeleteRecipeCommand request, CancellationToken cancellationToken)
        {
            var recipe = await _dbContext.Recipes.FirstOrDefaultAsync(x => x.Id == request.Id, cancellationToken);
            if (recipe == null)
            {
                return Response<NoContent>.Fail(404, "Recipe not found.");
            }

            _dbContext.Recipes.Remove(recipe);
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }
    }
}