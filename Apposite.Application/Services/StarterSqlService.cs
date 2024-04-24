using Apposite.Application.Dto.ElasticSearch.CuisinePreference;
using Apposite.Application.Dto.ElasticSearch.Health;
using Apposite.Application.Dto.ElasticSearch.Ingredient;
using Apposite.Application.Services.CuisinePreferenceService;
using Apposite.Application.Services.HealthService;
using Apposite.Application.Services.IngredientService;
using Apposite.Persistence;
using Microsoft.Extensions.DependencyInjection;
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

            var cuisines = dbContext.CuisinePreferences.ToList();
            var healths = dbContext.Healths.ToList();
            var ingredients = dbContext.Ingredients.ToList();

            var cuisinesDto = new List<CreateElasticCuisinePreferenceDto>();
            var healthsDto = new List<CreateElasticHealthDto>();
            var ingredientsDto = new List<CreateElasticIngredientDto>();

            await cuisinePreferenceService.CreateCuisinePreferenceBulkAsync(cuisinesDto);
            await healthService.CreateHealthBulkAsync(healthsDto);
            await ingredientService.CreateIngredientBulkAsync(ingredientsDto);
        }
    }
}
