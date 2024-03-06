using Apposite.Application.Dto.ElasticSearch.CuisinePreference;
using Apposite.Application.Dto.ElasticSearch.Ingredient;
using Apposite.Application.Settings;
using Apposite.Domain.Entities;
using Microsoft.Extensions.Options;
using Nest;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Services.CuisinePreferenceService
{
    public class CuisinePreferenceService : ICuisinePreferenceService
    {
        private readonly IElasticClient _elasticClient;
        private readonly ElasticSettings _elasticSettings;

        public CuisinePreferenceService(IElasticClient elasticClient, IOptions<ElasticSettings> elasticSettings)
        {
            _elasticClient = elasticClient;
            _elasticSettings = elasticSettings.Value;
        }
        public async Task CreateCuisinePreferenceAsync(CreateElasticCuisinePreferenceDto cuisinePreference)
        {
            try
            {
                var response = _elasticClient.Index(
                new CreateElasticCuisinePreferenceDto()
                {
                    Id = cuisinePreference.Id,
                    Name = cuisinePreference.Name,
                    Description = cuisinePreference.Description,
                }
                , idx => idx.Index(_elasticSettings.CuisinePreferenceIndex));

                if (!response.IsValid)
                {
                    throw new Exception(response.DebugInformation);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public async Task CreateCuisinePreferenceBulkAsync(List<CreateElasticCuisinePreferenceDto> cuisinePreferences)
        {
            try
            {
                var response = _elasticClient.IndexMany(cuisinePreferences, _elasticSettings.CuisinePreferenceIndex);

                if (!response.IsValid)
                {
                    throw new Exception(response.DebugInformation);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public async Task SyncCuisinePreferencesAsync(List<CreateElasticCuisinePreferenceDto> cuisinePreferences)
        {
            try
            {
                var deleteResult = _elasticClient.DeleteByQuery<CreateElasticCuisinePreferenceDto>(q => q
                    .Query(q => q.MatchAll())
                    .Index(_elasticSettings.CuisinePreferenceIndex));

                if (!deleteResult.IsValid)
                {
                    throw new Exception(deleteResult.DebugInformation);
                }

                var response = _elasticClient.IndexMany(cuisinePreferences, _elasticSettings.CuisinePreferenceIndex);

                if (!response.IsValid)
                {
                    throw new Exception(response.DebugInformation);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
