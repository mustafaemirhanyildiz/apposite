using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
   public class UserIngredient : BaseEntity
    {
        public int Quantity { get; set; }
        public Guid UserId { get; set; }    
        public virtual User User { get; set; }
        public Guid IngredientId { get; set; }
        public virtual Ingredient Ingredient { get; set; }
    }
}