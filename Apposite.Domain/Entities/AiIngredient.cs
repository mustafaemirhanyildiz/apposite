using Apposite.Core.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Domain.Entities
{
    public class AiIngredient : BaseEntity
    {
        public Guid AiRecipeId { get; set; }
        public virtual AiRecipe Recipe { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public double Calories { get; set; }
        public double Protein { get; set; }
        public double Fat { get; set; }
        public double Carbohydrates { get; set; }
        public string QuantityType { get; set; }
        public double Quantity { get; set; }
    }
}
