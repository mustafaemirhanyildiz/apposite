using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class Recipe : BaseEntity
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public double PreparationTime { get; set; }
        public double Calories { get; set; }
        public Guid? MediaFileId { get; set; }
        public virtual MediaFile? MediaFile { get; set; }
        public Guid UserId { get; set; }
        public virtual User User { get; set; }
        public Guid? CuisinePreferenceId { get; set; }
        public virtual CuisinePreference? CuisinePreference { get; set; }
        public virtual ICollection<RecipeStep> RecipeSteps { get; set; }
        public virtual ICollection<RecipeIngredient>? RecipeIngredients { get; set; }
    }
}