using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class Recipe : BaseEntity
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public string Instructions { get; set; }
        public int PreparationTime { get; set; }
        public int Servings { get; set; }
        public virtual ICollection<UserIngredient> UserIngredients { get; set; }
        public virtual ICollection<RecipeIngredient> RecipeIngredient { get; set; }
    }
}