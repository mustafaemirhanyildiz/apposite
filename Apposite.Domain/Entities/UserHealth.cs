
using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class UserHealth : BaseEntity
    {
        public virtual Users User { get; set; }
        public virtual Health Health { get; set; }
    }
}