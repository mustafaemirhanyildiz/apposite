using Apposite.Core.Entity;
using Microsoft.EntityFrameworkCore.ValueGeneration;

namespace Apposite.Domain.Entities
{
    public class RecipeIngredient : BaseEntity
    {
        public int Quantity { get; set; }
        public Guid RecipeId { get; set; }
        public virtual Recipe Recipe { get; set; }
        public Guid IngredientId { get; set; }
        public virtual Ingredient Ingredient { get; set; }
    }
}