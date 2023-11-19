using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
   public class UserIngredients : BaseEntity
    {
        public int Quantity { get; set; }
        public int UserId { get; set; }
        public int MaterialId { get; set; }
        public virtual Users User { get; set; }
        public virtual Material Material { get; set; }
    }
}