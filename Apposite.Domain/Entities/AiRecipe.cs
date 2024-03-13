using Apposite.Core.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Domain.Entities
{
    public class AiRecipe : BaseEntity
    {
        public Guid UserId { get; set; }
        public virtual User User { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public virtual ICollection<AiInstruction> AiInstructions { get; set; }
        public int PreparationTime { get; set; }
        public int Servings { get; set; }
        public double Calories { get; set; }
        public double Protein { get; set; }
        public double Fat { get; set; }
        public double Carbohydrates { get; set; }
        public virtual ICollection<AiIngredient> AiIngredients { get; set; }

    }
}
