using Apposite.Core.Dtos;
using MediatR;

namespace Apposite.Application.Commands.Ingredient
{
    public class DeleteIngredientCommand : IRequest<Response<NoContent>>
    {
        public Guid Id { get; set; }
        
    }
}