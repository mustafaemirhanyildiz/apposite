using Apposite.Application.Dto.CuisinePreference;
using Apposite.Application.Dto.Health;
using Apposite.Application.Dto.Ingredient;

namespace Apposite.Application.Dto.User
{
    public class GetUserInfoDto
    {
        public List<IngredientDto> Ingredients { get; set; }
        public List<CuisinePreferenceDto> Cuisines { get; set; }
        public List<HealthDto> Healths { get; set; }

    }
}
