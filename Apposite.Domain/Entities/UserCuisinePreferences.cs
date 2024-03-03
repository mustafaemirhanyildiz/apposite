using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class UserCuisinePreferences : BaseEntity
    {
        public virtual Users User { get; set; }
        public virtual CuisinePreferences CuisinePreferences { get; set; }
    }
}