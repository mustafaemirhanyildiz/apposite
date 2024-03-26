using Apposite.Core.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Domain.Entities
{
    public class RecipeStepMediaFile : BaseEntity
    {
        public Guid RecipeStepId { get; set; }
        public virtual RecipeStep RecipeStep { get; set; }
        public Guid MediaFileId { get; set; }
        public virtual MediaFile MediaFile { get; set; }
    }
}
