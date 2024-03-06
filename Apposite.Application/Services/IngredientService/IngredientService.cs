

using Apposite.Application.Dto.ElasticSearch.Ingredient;
using Apposite.Application.Settings;
using Microsoft.Extensions.Options;
using Nest;

namespace Apposite.Application.Services.IngredientService
{
    public class IngredientService : IIngredientService
    {

        private readonly IElasticClient _elasticClient;
        private readonly ElasticSettings _elasticSettings;

        public IngredientService(IElasticClient elasticClient, IOptions<ElasticSettings> elasticSettings)
        {
            _elasticClient = elasticClient;
            _elasticSettings = elasticSettings.Value;
        }

        public async Task CreateIngredientAsync(CreateElasticIngredientDto ingredient)
        {
            try
            {
                var response = _elasticClient.Index(
                new CreateElasticIngredientDto()
                {
                    Id = ingredient.Id,
                    Name = ingredient.Name,
                    Description = ingredient.Description,
                }
                , idx => idx.Index(_elasticSettings.IngredientIndex));

                if (!response.IsValid)
                {
                    throw new Exception(response.DebugInformation);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public async Task CreateIngredientBulkAsync(List<CreateElasticIngredientDto> ingredients)
        {
            try
            {
                var response = _elasticClient.IndexMany(ingredients, _elasticSettings.IngredientIndex);

                if (!response.IsValid)
                {
                    throw new Exception(response.DebugInformation);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public async Task DeleteIngredientAsync(Guid id)
        {
            var response = _elasticClient.Delete<CreateElasticIngredientDto>(id, idx => idx.Index(_elasticSettings.IngredientIndex));

            if (!response.IsValid)
            {
                throw new Exception(response.DebugInformation);
            }
        }

        public async Task SyncIngredientsAsync(List<CreateElasticIngredientDto> ingredients)
        {
            try
            {
                var deleteResult = _elasticClient.DeleteByQuery<CreateElasticIngredientDto>(q => q
                    .Query(q => q.MatchAll())
                    .Index(_elasticSettings.IngredientIndex));

                if (!deleteResult.IsValid)
                {
                    throw new Exception(deleteResult.DebugInformation);
                }

                var response = _elasticClient.IndexMany(ingredients, _elasticSettings.IngredientIndex);

                if (!response.IsValid)
                {
                    throw new Exception(response.DebugInformation);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public async Task UpdateIngredientAsync(CreateElasticIngredientDto ingredient)
        {
            var response = _elasticClient.Update<CreateElasticIngredientDto>(ingredient.Id, u => u
                .Index(_elasticSettings.IngredientIndex)
                .Doc(new CreateElasticIngredientDto
                {
                    Id = ingredient.Id,
                    Name = ingredient.Name,
                    Description = ingredient.Description,
                }));

            if (!response.IsValid)
            {
                throw new Exception(response.DebugInformation);
            }
            
        }
    }
}