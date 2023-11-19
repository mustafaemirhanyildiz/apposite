using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
      public class CuisinePreferences : BaseEntity
    {
        public string CuisineType { get; set; }
        public int UserId { get; set; }
        public virtual Users User { get; set; }
    }
}