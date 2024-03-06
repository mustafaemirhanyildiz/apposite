
using Nest;

namespace Apposite.Application.Settings
{
    public class ElasticSettings
    {
        public string Uri { get; set; }
        public string DefaultIndex { get; set; }
        public string IngredientIndex { get; set; }
        public string CuisinePreferenceIndex { get; set; }
        public string HealthIndex { get; set; }
    }
}