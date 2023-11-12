using Apposite.Application.Commands.User;
using Apposite.Application.Validations.FluentValidation;
using FluentValidation;

namespace Apposite.Application.Validations.CommandValidations.User
{
    public class CreateUserCommandValidation : BaseValidator<CreateUserCommand>
    {
        public CreateUserCommandValidation()
        {
            RuleFor(x => x.Email)
                .Must(x => !string.IsNullOrWhiteSpace(x))
                .WithMessage("Email Adresi Boş Olamaz")
                .EmailAddress()
                .WithMessage("Email Adresi Geçersiz");
        }
    }
}