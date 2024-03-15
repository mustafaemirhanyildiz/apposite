using Apposite.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Dto.Ai
{
    public class AiIngredientDto
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public double Calories { get; set; }
        public double Protein { get; set; }
        public double Fat { get; set; }
        public double Carbohydrates { get; set; }
        public string QuantityType { get; set; }
        public double Quantity { get; set; }
    }
}
