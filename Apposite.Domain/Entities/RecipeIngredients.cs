using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class RecipeIngredients : BaseEntity
    {
        public int Quantity { get; set; }

        public virtual Recipe Recipe { get; set; }
        public virtual Material Material { get; set; }
    }
}