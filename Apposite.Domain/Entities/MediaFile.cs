using Apposite.Core.Entity;
using Apposite.Domain.Enums;

namespace Apposite.Domain.Entities
{
    public class MediaFile : BaseEntity
    {
        public string FileName { get; set; }
        public FileType FileType { get; set; }
        public string FileUrl { get; set; } 
        public Guid? RecipeStepId { get; set; }
        public virtual RecipeStep? RecipeStep { get; set; }
    }
}