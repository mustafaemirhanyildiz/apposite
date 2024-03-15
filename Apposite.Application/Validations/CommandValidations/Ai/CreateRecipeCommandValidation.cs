using Apposite.Application.Commands.Ai;
using Apposite.Application.Validations.FluentValidation;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Validations.CommandValidations.Ai
{
    public class CreateRecipeCommandValidation : BaseValidator<CreateRecipeCommand>
    {
        public CreateRecipeCommandValidation()
        {
            RuleFor(x => x.Language)
                .IsInEnum()
                .WithMessage("Dil Geçersiz");

            RuleFor(x => x.Cuisine)
                .Must(x => !string.IsNullOrWhiteSpace(x))
                .When(x => string.IsNullOrWhiteSpace(x.MealType) && !(x.IncludedIngredients?.Count > 0) && !(x.Health?.Count > 0) && !(x.ExcludedIngredients?.Count > 0))
                .WithMessage("En Az Bir Alan Dolu Olmalı");

            RuleFor(x => x.MealType)
                .Must(x => !string.IsNullOrWhiteSpace(x))
                .When(x => string.IsNullOrWhiteSpace(x.Cuisine) && !(x.IncludedIngredients?.Count > 0) && !(x.Health?.Count > 0) && !(x.ExcludedIngredients?.Count > 0))
                .WithMessage("En Az Bir Alan Dolu Olmalı");

            RuleFor(x => x.IncludedIngredients)
                .Must(x => x?.Count > 0)
                .When(x => string.IsNullOrWhiteSpace(x.Cuisine) && string.IsNullOrWhiteSpace(x.MealType) && !(x.Health?.Count > 0) && !(x.ExcludedIngredients?.Count > 0))
                .WithMessage("En Az Bir Alan Dolu Olmalı");

            RuleFor(x => x.Health)
                .Must(x => x?.Count > 0)
                .When(x => string.IsNullOrWhiteSpace(x.Cuisine) && string.IsNullOrWhiteSpace(x.MealType) && !(x.IncludedIngredients?.Count > 0) && !(x.ExcludedIngredients?.Count > 0))
                .WithMessage("En Az Bir Alan Dolu Olmalı");

            RuleFor(x => x.ExcludedIngredients)
                .Must(x => x?.Count > 0)
                .When(x => string.IsNullOrWhiteSpace(x.Cuisine) && string.IsNullOrWhiteSpace(x.MealType) && !(x.IncludedIngredients?.Count > 0) && !(x.Health?.Count > 0))
                .WithMessage("En Az Bir Alan Dolu Olmalı");

        }
    }
}
