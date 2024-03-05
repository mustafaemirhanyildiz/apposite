
using Apposite.Application.Services.IngredientService;
using Microsoft.Extensions.DependencyInjection;

namespace Apposite.Application.Services
{
    public static class ExternalServiceExtension
    {
        public static void ExternalServices(this IServiceCollection services)
        {
            services.AddSingleton<IIngredientService, IngredientService.IngredientService>();
        }

    }
}