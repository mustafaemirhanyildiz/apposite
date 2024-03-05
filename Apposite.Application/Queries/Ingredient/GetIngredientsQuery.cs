using Apposite.Application.Dto.Ingredient;
using Apposite.Core.Dtos;
using MediatR;

namespace Apposite.Application.Queries.Ingredient
{
    public class GetIngredientsQuery : IRequest<Response<List<IngredientDto>>>
    {
        public string SearchText { get; init; } = string.Empty;
        public int Page { get; init; }
        public int PageSize { get; init; }  
    }
}