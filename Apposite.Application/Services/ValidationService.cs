using Apposite.Application.Validations;
using Microsoft.Extensions.DependencyInjection;
using FluentValidation;
using Apposite.Application.Validations.FluentValidation;


namespace Apposite.Application.Services
{
    public class ValidationService
    {
        private static IServiceProvider _serviceProvider;
        //private static ILogger<ValidationService> _logger;

        //public static void SetProvider(IServiceCollection services, ILogger<ValidationService> logger)
        public static void SetProvider(IServiceCollection services)
        {
            //_logger = logger;
            _serviceProvider = services.BuildServiceProvider();
        }
        public static ValidationResultModel ValidateModel<T>(T model) where T : class
        {
            var validatonResult = new ValidationResultModel();
            try
            {
                if (_serviceProvider == null)
                    throw new ValidationException("Provider is not created");

                var validator = (BaseValidator<T>)_serviceProvider.GetService<IValidator<T>>();

                if (validator == null)
                    throw new ValidationException("Validator is not registered");

                var results = validator.Validate(model);
                if (!results.IsValid)
                    validatonResult.Errors = results.Errors.ToDictionary(x => x.PropertyName, y => y.ErrorMessage);
            }
            catch (Exception)
            {
                //_logger.LogError($"{nameof(ValidateModel)} throw an exception. Exception Message: {ex.Message}", ex);
            }
            return validatonResult;
        }
    }
}