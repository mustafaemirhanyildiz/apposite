using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class Material : BaseEntity
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public double Calories { get; set; }
        public double Protein { get; set; }
        public double Fat { get; set; }
        public byte[] Image { get; set; }
        public virtual ICollection<RecipeIngredients> RecipeIngredients { get; set; }
    }
}