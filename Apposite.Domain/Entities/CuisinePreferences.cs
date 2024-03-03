using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
      public class CuisinePreference : BaseEntity
    {
        public string Name { get; set; }
        public string? Description { get; set; }
    }
}