

using Apposite.Application.Dto.ElasticSearch.Ingredient;

namespace Apposite.Application.Services.IngredientService
{
    public interface IIngredientService
    {

        public Task CreateIngredientAsync(CreateElasticIngredientDto ingredient);
        public Task CreateIngredientBulkAsync(List<CreateElasticIngredientDto> ingredients);
        public Task SyncIngredientsAsync(List<CreateElasticIngredientDto> ingredients);
        
    }
}