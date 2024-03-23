using Apposite.Application.Dto.Ai;
using Apposite.Core.Dtos;
using Apposite.Domain.Enums;
using MediatR;


namespace Apposite.Application.Commands.Ai
{
    public class CreateRecipeCommand : IRequest<Response<CreateRecipeDto>>
    {
        public string? Cuisine { get; set; }
        public string? MealType { get; set; }
        public List<string>? IncludedIngredients { get; set; }
        public List<string>? ExcludedIngredients { get; set; }
        public List<string>? Health { get; set; }
        public required AiLanguage Language { get; set; }
    }
}
