using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
   public class UserIngredients : BaseEntity
    {
        public int Quantity { get; set; }
        public virtual Users User { get; set; }
        public virtual Ingredients Material { get; set; }
    }
}