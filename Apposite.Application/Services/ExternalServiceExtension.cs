
using Apposite.Application.Services.IngredientService;
using Apposite.Application.Services.TokenService;
using Microsoft.Extensions.DependencyInjection;

namespace Apposite.Application.Services
{
    public static class ExternalServiceExtension
    {
        public static void ExternalServices(this IServiceCollection services)
        {
            services.AddSingleton<IIngredientService, IngredientService.IngredientService>();
            services.AddScoped<ITokenService, TokenService.TokenService>();
        }

    }
}