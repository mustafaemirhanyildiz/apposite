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
using Microsoft.EntityFrameworkCore;
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

                var cuisines = dbContext.CuisinePreferences.ToList();
                var cuisinesDto = ObjectMapper.Mapper.Map<List<CreateElasticCuisinePreferenceDto>>(cuisines);
                await cuisinePreferenceService.SyncCuisinePreferencesAsync(cuisinesDto);

                var healths = dbContext.Healths.ToList();
                var healthsDto = ObjectMapper.Mapper.Map<List<CreateElasticHealthDto>>(healths);
                await healthService.SyncHealthsAsync(healthsDto);

                var ingredients = dbContext.Ingredients.Include(x => x.MediaFile).ToList();
                var ingredientsDto = ObjectMapper.Mapper.Map<List<CreateElasticIngredientDto>>(ingredients);
                await ingredientService.SyncIngredientsAsync(ingredientsDto);
        }
    }
}
