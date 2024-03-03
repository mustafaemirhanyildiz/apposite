

using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class UserHealthIngredients : BaseEntity
    {
        public virtual Users User { get; set; }
        public virtual Material Material { get; set; }   
    }
}