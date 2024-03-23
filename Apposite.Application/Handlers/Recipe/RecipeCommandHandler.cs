
using Apposite.Application.Commands.Recipe;
using Apposite.Application.Mapping;
using Apposite.Application.Services.TokenService;
using Apposite.Core.Dtos;
using Apposite.Persistence;
using MediatR;

namespace Apposite.Application.Handlers.Recipe
{
    public class RecipeCommandHandler : IRequestHandler<CreateRecipeCommand, Response<NoContent>>
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

            var recipe = ObjectMapper.Mapper.Map<Domain.Entities.Recipe>(request);
            recipe.UserId = userId;
            await _dbContext.Recipes.AddAsync(recipe, cancellationToken);
            await _dbContext.SaveChangesAsync(cancellationToken);
            return Response<NoContent>.Success(204);
        }
    }
}