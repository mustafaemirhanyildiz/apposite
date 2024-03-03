
using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class Health : BaseEntity
    {
        public string Name { get; set; }
        public string? Description { get; set; }
    }
}