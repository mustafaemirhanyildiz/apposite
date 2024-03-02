
using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class UserHealth : BaseEntity
    {
        public string HealthCondition { get; set; }
        public string DietaryRestrictions { get; set; }
        public virtual Users User { get; set; }
    }
}