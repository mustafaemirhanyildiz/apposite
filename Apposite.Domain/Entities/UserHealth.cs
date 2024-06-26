
using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class UserHealth : BaseEntity
    {
        public Guid UserId { get; set; }
        public virtual User User { get; set; }
        public Guid HealthId { get; set; }
        public virtual Health Health { get; set; }
    }
}