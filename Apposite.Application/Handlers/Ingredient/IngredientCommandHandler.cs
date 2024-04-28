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
                                            IRequestHandler<DeleteIngredientCommand, Response<NoContent>>,
                                            IRequestHandler<SyncIngredientCommand, Response<NoContent>>
    {

        private readonly AppositeDbContext _dbContext;
        private readonly RedisService _redisService;
        private readonly IIngredientService _ingredientService;

        public IngredientCommandHandler(AppositeDbContext dbContext, RedisService redisService, IIngredientService ingredientService)
        {
            _dbContext = dbContext;
            _redisService = redisService;
            _ingredientService = ingredientService;
        }

        public async Task<Response<NoContent>> Handle(CreateIngredientCommand request, CancellationToken cancellationToken)
        {
            var ingredient = ObjectMapper.Mapper.Map<Domain.Entities.Ingredient>(request);
            await _dbContext.Ingredients.AddAsync(ingredient, cancellationToken);
            _dbContext.Ingredients.Include(x => x.MediaFile);
            var elasticDto = ObjectMapper.Mapper.Map<CreateElasticIngredientDto>(ingredient);
            await _ingredientService.CreateIngredientAsync(elasticDto);
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
                var ingredient = await _dbContext.Ingredients.FirstOrDefaultAsync(x => x.Id == request.Id, cancellationToken);
                if (ingredient == null)
                {
                    return Response<NoContent>.Fail(404, "Ingredient not found.");
                }

                var updatedIngredient = ObjectMapper.Mapper.Map(request, ingredient);
                await _ingredientService.UpdateIngredientAsync(ObjectMapper.Mapper.Map<CreateElasticIngredientDto>(updatedIngredient));
                _dbContext.Ingredients.Update(updatedIngredient);
                await _dbContext.SaveChangesAsync();
                return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(DeleteIngredientCommand request, CancellationToken cancellationToken)
        {
                var ingredient = await _dbContext.Ingredients.FirstOrDefaultAsync(x => x.Id == request.Id, cancellationToken);
                if (ingredient == null)
                {
                    return Response<NoContent>.Fail(404, "Ingredient not found.");
                }
                await _ingredientService.DeleteIngredientAsync(ingredient.Id);
                _dbContext.Ingredients.Remove(ingredient);
                await _dbContext.SaveChangesAsync();
                return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(SyncIngredientCommand request, CancellationToken cancellationToken)
        {
            var ingredients = await _dbContext.Ingredients.ToListAsync(cancellationToken);
            await _ingredientService.SyncIngredientsAsync(ObjectMapper.Mapper.Map<List<CreateElasticIngredientDto>>(ingredients));
            return Response<NoContent>.Success(204);
            
        }
    }
}