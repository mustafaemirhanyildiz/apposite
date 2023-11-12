using Apposite.Application.Commands.User;
using Apposite.Application.Validations.FluentValidation;
using FluentValidation;

namespace Apposite.Application.Validations.CommandValidations.User
{
    public class LoginUserCommandValidation : BaseValidator<CreateUserCommand>
    {
        public LoginUserCommandValidation()
        {
            RuleFor(x => x.Email)
                .Must(x => !string.IsNullOrWhiteSpace(x))
                .WithMessage("Email Adresi Boş Olamaz")
                .EmailAddress()
                .WithMessage("Email Adresi Geçersiz");

            RuleFor(x => x.Password)
                .Must(x => !string.IsNullOrWhiteSpace(x))
                .WithMessage("Şifre Geçersiz");
        }
    }
}
