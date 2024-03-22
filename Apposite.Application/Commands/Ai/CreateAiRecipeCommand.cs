using Apposite.Application.Dto.Ai;
using Apposite.Core.Dtos;
using Apposite.Domain.Enums;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Commands.Ai
{
    public class CreateAiRecipeCommand : IRequest<Response<CreateAiRecipeDto>>
    {
        public string? Cuisine { get; set; }
        public string? MealType { get; set; }
        public List<string>? IncludedIngredients { get; set; }
        public List<string>? ExcludedIngredients { get; set; }
        public List<string>? Health { get; set; }
        public required AiLanguage Language { get; set; }
    }
}
