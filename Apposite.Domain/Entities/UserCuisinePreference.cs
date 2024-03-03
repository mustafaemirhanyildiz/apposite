using Apposite.Core.Entity;

namespace Apposite.Domain.Entities
{
    public class UserCuisinePreference : BaseEntity
    {
        public Guid UserId { get; set; }
        public virtual User User { get; set; }
        public Guid CuisinePreferenceId { get; set; }
        public virtual CuisinePreference CuisinePreference { get; set; }
    }
}


