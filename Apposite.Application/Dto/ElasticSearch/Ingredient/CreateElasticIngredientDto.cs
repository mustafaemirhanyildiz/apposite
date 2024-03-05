

namespace Apposite.Application.Dto.ElasticSearch.Ingredient
{
    public class CreateElasticIngredientDto
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public double Calories { get; set; }
        public double Protein { get; set; }
        public double Fat { get; set; }

        
    }
}