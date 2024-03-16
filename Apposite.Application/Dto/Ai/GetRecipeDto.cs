using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Dto.Ai
{
    public class GetRecipeDto
    {
        public Guid UserId { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public List<AiInstructionDto> AiInstructions { get; set; }
        public int PreparationTime { get; set; }
        public int Servings { get; set; }
        public double Calories { get; set; }
        public double Protein { get; set; }
        public double Fat { get; set; }
        public double Carbohydrates { get; set; }
        public List<AiIngredientDto> AiIngredients { get; set; }
    }
}
