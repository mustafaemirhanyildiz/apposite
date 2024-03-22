using Apposite.Domain.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Dto.Ai
{
    public class CreateAiRecipeFastApiDto
    {
        public string? Cuisine { get; set; }
        public string? MealType { get; set; }
        public List<string>? IncludedIngredients { get; set; }
        public List<string>? ExcludedIngredients { get; set; }
        public List<string>? Health { get; set; }
        public required string Language { get; set; }
        public List<string>? OldRecipes { get; set; }
    }
}
