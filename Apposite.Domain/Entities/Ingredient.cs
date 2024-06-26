using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class Ingredient : BaseEntity
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public double Calories { get; set; }
        public double Protein { get; set; }
        public double Fat { get; set; }
        public Guid? MediaFileId { get; set; }
        public virtual MediaFile? MediaFile { get; set; }
        public virtual ICollection<RecipeIngredient>? RecipeIngredient { get; set; }
    }
}