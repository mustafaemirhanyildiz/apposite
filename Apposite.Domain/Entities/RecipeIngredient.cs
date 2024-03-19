using Apposite.Core.Entity;
using Microsoft.EntityFrameworkCore.ValueGeneration;

namespace Apposite.Domain.Entities
{
    public class RecipeIngredient : BaseEntity
    {
        public string QuantityType { get; set; }
        public double Quantity { get; set; }
        public Guid RecipeId { get; set; }
        public virtual Recipe Recipe { get; set; }
        public Guid IngredientId { get; set; }
        public virtual Ingredient Ingredient { get; set; }
    }
}