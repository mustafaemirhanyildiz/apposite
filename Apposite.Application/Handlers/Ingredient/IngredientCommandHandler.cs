using Apposite.Application.Commands.Ingredient;
using Apposite.Application.Dto.ElasticSearch.Ingredient;
using Apposite.Application.Mapping;
using Apposite.Application.Services;
using Apposite.Application.Services.IngredientService;
using Apposite.Core.Dtos;
using Apposite.Persistence;
using MediatR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace Apposite.Application.Handlers.Ingredient
{
    public class IngredientCommandHandler : IRequestHandler<CreateIngredientCommand, Response<NoContent>>,
                                            IRequestHandler<CreateIngredientBulkCommand, Response<NoContent>>,
                                            IRequestHandler<UpdateIngredientCommand, Response<NoContent>>,
                                            IRequestHandler<DeleteIngredientCommand, Response<NoContent>>
    {

        private readonly AppositeDbContext _dbContext;
        private readonly ILogger<IngredientCommandHandler> _logger;
        private readonly RedisService _redisService;
        private readonly IIngredientService _ingredientService;

        public IngredientCommandHandler(AppositeDbContext dbContext, ILogger<IngredientCommandHandler> logger, RedisService redisService, IIngredientService ingredientService)
        {
            _dbContext = dbContext;
            _logger = logger;
            _redisService = redisService;
            _ingredientService = ingredientService;
        }

        public async Task<Response<NoContent>> Handle(CreateIngredientCommand request, CancellationToken cancellationToken)
        {
            var ingredient = ObjectMapper.Mapper.Map<Domain.Entities.Ingredient>(request);
            await _dbContext.Ingredients.AddAsync(ingredient, cancellationToken);
            await _ingredientService.CreateIngredientAsync(ObjectMapper.Mapper.Map<CreateElasticIngredientDto>(ingredient));
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(CreateIngredientBulkCommand request, CancellationToken cancellationToken)
        {
            var ingredients = ObjectMapper.Mapper.Map<List<Domain.Entities.Ingredient>>(request.Ingredients);
            await _dbContext.Ingredients.AddRangeAsync(ingredients, cancellationToken);
            await _ingredientService.CreateIngredientBulkAsync(ObjectMapper.Mapper.Map<List<CreateElasticIngredientDto>>(ingredients));
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(UpdateIngredientCommand request, CancellationToken cancellationToken)
        {
            try
            {
                var ingredient = await _dbContext.Ingredients.FirstOrDefaultAsync(x => x.Id == request.Id, cancellationToken);
                if (ingredient == null)
                {
                    return Response<NoContent>.Fail(404, "Ingredient not found.");
                }

                var updatedIngredient = ObjectMapper.Mapper.Map(request, ingredient);
                _dbContext.Ingredients.Update(updatedIngredient);
                await _dbContext.SaveChangesAsync();
                return Response<NoContent>.Success(204);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error updating ingredient");
                return Response<NoContent>.Fail(500, "Error updating ingredient");
            }
        }

        public async Task<Response<NoContent>> Handle(DeleteIngredientCommand request, CancellationToken cancellationToken)
        {
            try
            {
                var ingredient = await _dbContext.Ingredients.FirstOrDefaultAsync(x => x.Id == request.Id, cancellationToken);
                if (ingredient == null)
                {
                    return Response<NoContent>.Fail(404, "Ingredient not found.");
                }

                _dbContext.Ingredients.Remove(ingredient);
                await _dbContext.SaveChangesAsync();
                return Response<NoContent>.Success(204);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error deleting ingredient");
                return Response<NoContent>.Fail(500, "Error deleting ingredient");
            }

        }
    }
}