using Apposite.Application.Dto.CuisinePreference;
using Apposite.Application.Dto.ElasticSearch.CuisinePreference;
using Apposite.Application.Dto.ElasticSearch.Health;
using Apposite.Application.Dto.ElasticSearch.Ingredient;
using Apposite.Application.Dto.Health;
using Apposite.Application.Dto.Ingredient;
using Apposite.Application.Mapping;
using Apposite.Application.Services.CuisinePreferenceService;
using Apposite.Application.Services.HealthService;
using Apposite.Application.Services.IngredientService;
using Apposite.Application.Settings;
using Apposite.Persistence;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;
using Nest;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Formats.Asn1.AsnWriter;

namespace Apposite.Application.Services
{
    public static class StarterSqlService
    {

        public async static Task StarterSync(IServiceProvider _serviceProvider)
        {
            using var scope = _serviceProvider.CreateScope();
            var dbContext = scope.ServiceProvider.GetRequiredService<AppositeDbContext>();
            var cuisinePreferenceService = scope.ServiceProvider.GetRequiredService<ICuisinePreferenceService>();
            var healthService = scope.ServiceProvider.GetRequiredService<IHealthService>();
            var ingredientService = scope.ServiceProvider.GetRequiredService<IIngredientService>();
            var elasticClient = scope.ServiceProvider.GetRequiredService<IElasticClient>();
            var _elasticSettings = scope.ServiceProvider.GetRequiredService<IOptions<ElasticSettings>>().Value;

            if ((await elasticClient.SearchAsync<CuisinePreferenceDto>(s => s.Index(_elasticSettings.CuisinePreferenceIndex).Size(1))).Total == 0)
            {
                var cuisines = dbContext.CuisinePreferences.ToList();
                var cuisinesDto = ObjectMapper.Mapper.Map<List<CreateElasticCuisinePreferenceDto>>(cuisines);
                await cuisinePreferenceService.CreateCuisinePreferenceBulkAsync(cuisinesDto);
            }
            if ((await elasticClient.SearchAsync<HealthDto>(s => s.Index(_elasticSettings.HealthIndex).Size(1))).Total == 0)
            {
                var healths = dbContext.Healths.ToList();
                var healthsDto = ObjectMapper.Mapper.Map<List<CreateElasticHealthDto>>(healths);
                await healthService.CreateHealthBulkAsync(healthsDto);
            }
            if ((await elasticClient.SearchAsync<IngredientDto>(s => s.Index(_elasticSettings.IngredientIndex).Size(1))).Total == 0)
            {
                var ingredients = dbContext.Ingredients.ToList();
                var ingredientsDto = ObjectMapper.Mapper.Map<List<CreateElasticIngredientDto>>(ingredients);
                await ingredientService.CreateIngredientBulkAsync(ingredientsDto);
            }
        }
    }
}
