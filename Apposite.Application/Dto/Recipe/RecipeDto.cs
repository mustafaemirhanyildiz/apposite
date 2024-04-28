using Apposite.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Dto.Recipe
{
    public class RecipeDto
    {
        public Guid Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public double PreparationTime { get; set; }
        public double Calories { get; set; }
        public string? ImageUrl { get; set; }
        public RecipeUserDto? User { get; set; }
        public RecipeCuisineDto CuisinePreference { get; set; }
        public ICollection<GetRecipeStepDto> RecipeSteps { get; set; }
        public ICollection<GetRecipeIngredientDto>? RecipeIngredients { get; set; }
    }
}
