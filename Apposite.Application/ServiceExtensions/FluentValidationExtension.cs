using Apposite.Application.Commands.Ai;
using Apposite.Application.Commands.Auth;
using Apposite.Application.Services;
using Apposite.Application.Validations.CommandValidations.Ai;
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
            services.AddScoped<IValidator<LoginCommand>, LoginUserCommandValidation>();
            services.AddScoped<IValidator<ForgotPasswordCommand>, ForgotPasswordCommandValidation>();
            services.AddScoped<IValidator<UpdateForgottenPasswordCommand>, UpdateForgottenPasswordValidation>();
            services.AddScoped<IValidator<CreateAiRecipeCommand>, CreateAiRecipeCommandValidation>();
            ValidationService.SetProvider(services);
            return services;
        }
    }
}
