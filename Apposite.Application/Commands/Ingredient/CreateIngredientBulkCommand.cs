using Apposite.Application.Dto.Ingredient;
using Apposite.Core.Dtos;
using MediatR;

namespace Apposite.Application.Commands.Ingredient
{
    public class CreateIngredientBulkCommand : IRequest<Response<NoContent>>
    {
        public List<CreateIngredientDto> Ingredients { get; set; }
    }
}