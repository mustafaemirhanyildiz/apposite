using Apposite.Application.Dto.Recipe;
using Apposite.Core.Dtos;
using MediatR;


namespace Apposite.Application.Queries.Recipe
{
    public class GetByIdRecipeQuery : IRequest<Response<RecipeDto>>
    {
        public Guid Id { get; set; }

    }
}
