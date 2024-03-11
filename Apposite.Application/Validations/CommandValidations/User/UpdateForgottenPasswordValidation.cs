using Apposite.Application.Commands.Auth;
using Apposite.Application.Validations.FluentValidation;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Validations.CommandValidations.User
{
    public class UpdateForgottenPasswordValidation : BaseValidator<UpdateForgottenPasswordCommand>
    {
        public UpdateForgottenPasswordValidation()
        {

            RuleFor(x => x.Password)
                .Must(x => !string.IsNullOrWhiteSpace(x))
                .WithMessage("Şifre Geçersiz");

        }
    }
}
