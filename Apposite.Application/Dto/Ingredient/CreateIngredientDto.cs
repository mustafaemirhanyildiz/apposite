namespace Apposite.Application.Dto.Ingredient
{
    public class CreateIngredientDto
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public double Calories { get; set; }
        public double Protein { get; set; }
        public double Fat { get; set; }
        public byte[]? Image { get; set; }
    }
}
