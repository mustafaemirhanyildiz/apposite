using Apposite.Application.Commands.User;
using Apposite.Application.Services;
using Apposite.Application.Validations.CommandValidations.User;
using FluentValidation;
using Microsoft.Extensions.DependencyInjection;

namespace Apposite.Application.ServiceExtensions
{
    public static class FluentValidationExtension
    {
        public static IServiceCollection RegisterFluentValidationCommandValidators(this IServiceCollection services)
        {
            services.AddScoped<IValidator<CreateUserCommand>, CreateUserCommandValidation>();
            ValidationService.SetProvider(services);
            return services;
        }
    }
}
