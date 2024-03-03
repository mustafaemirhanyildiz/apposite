using Apposite.Application.Commands.Ingredient;
using Apposite.Application.Mapping;
using Apposite.Application.Services;
using Apposite.Core.Dtos;
using Apposite.Persistence;
using MediatR;
using Microsoft.Extensions.Logging;

namespace Apposite.Application.Handlers.Ingredient
{
    public class IngredientCommandHandler : IRequestHandler<CreateIngredientCommand, Response<NoContent>>,
                                            IRequestHandler<CreateIngredientBulkCommand, Response<NoContent>>
    {

        private readonly AppositeDbContext _dbContext;
        private readonly ILogger<IngredientCommandHandler> _logger;
        private readonly RedisService _redisService;

        public IngredientCommandHandler(AppositeDbContext dbContext, ILogger<IngredientCommandHandler> logger, RedisService redisService)
        {
            _dbContext = dbContext;
            _logger = logger;
            _redisService = redisService;
        }

        public async Task<Response<NoContent>> Handle(CreateIngredientCommand request, CancellationToken cancellationToken)
        {
                var ingredient = ObjectMapper.Mapper.Map<Domain.Entities.Ingredient>(request);
                await _dbContext.Ingredients.AddAsync(ingredient, cancellationToken);
                await _dbContext.SaveChangesAsync();
                return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(CreateIngredientBulkCommand request, CancellationToken cancellationToken)
        {
                var ingredients = ObjectMapper.Mapper.Map<List<Domain.Entities.Ingredient>>(request.Ingredients);
                await _dbContext.Ingredients.AddRangeAsync(ingredients, cancellationToken);
                await _dbContext.SaveChangesAsync();
                return Response<NoContent>.Success(204);
        }
    }
}