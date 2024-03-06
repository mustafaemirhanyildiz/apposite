using Apposite.Application.Dto.ElasticSearch.CuisinePreference;

namespace Apposite.Application.Services.CuisinePreferenceService
{
    public interface ICuisinePreferenceService
    {
        public Task CreateCuisinePreferenceAsync(CreateElasticCuisinePreferenceDto cuisinePreference);
        public Task CreateCuisinePreferenceBulkAsync(List<CreateElasticCuisinePreferenceDto> cuisinePreferences);
        public Task SyncCuisinePreferencesAsync(List<CreateElasticCuisinePreferenceDto> cuisinePreferences);

    }
}
