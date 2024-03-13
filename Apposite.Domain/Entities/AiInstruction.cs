using Apposite.Core.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Domain.Entities
{
    public class AiInstruction : BaseEntity
    {
        public Guid AiRecipeId { get; set; }
        public virtual AiRecipe Recipe { get; set; }
        public int StepNumber { get; set; }
        public string Description { get; set; }

    }
}
