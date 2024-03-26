
using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class RecipeStep : BaseEntity
    {
        public int StepNumber { get; set; }
        public string Description { get; set; }
        public Guid RecipeId { get; set; }
        public virtual Recipe Recipe { get; set; }
        
    }
}