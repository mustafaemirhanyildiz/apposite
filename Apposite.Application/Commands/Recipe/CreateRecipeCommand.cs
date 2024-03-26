using Apposite.Application.Dto.Recipe;
using Apposite.Core.Dtos;
using MediatR;

namespace Apposite.Application.Commands.Recipe
{
    public class CreateRecipeCommand : IRequest<Response<NoContent>>
    {
        public Guid CoverPhotoId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public double PreparationTime { get; set; }
        public double Calories { get; set; }
        public Guid CuisinePreferenceId { get; set; }
        public ICollection<RecipeStepDto> RecipeSteps { get; set; }
        public ICollection<RecipeIngredientDto> RecipeIngredients { get; set; }

    }
}