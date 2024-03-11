using Apposite.Application.Commands.Auth;
using Apposite.Application.Validations.FluentValidation;
using FluentValidation;

namespace Apposite.Application.Validations.CommandValidations.User
{
    public class ForgotPasswordCommandValidation : BaseValidator<ForgotPasswordCommand>
    {
        public ForgotPasswordCommandValidation()
        {
            RuleFor(x => x.Email)
                .Must(x => !string.IsNullOrWhiteSpace(x))
                .WithMessage("Email Adresi Boş Olamaz")
                .EmailAddress()
                .WithMessage("Email Adresi Geçersiz");
        }
    }
}
