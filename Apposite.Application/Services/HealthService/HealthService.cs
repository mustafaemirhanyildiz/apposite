using Apposite.Application.Dto.ElasticSearch.Health;
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

namespace Apposite.Application.Services.HealthService
{
    public class HealthService : IHealthService
    {
        private readonly IElasticClient _elasticClient;
        private readonly ElasticSettings _elasticSettings;

        public HealthService(IElasticClient elasticClient, IOptions<ElasticSettings> elasticSettings)
        {
            _elasticClient = elasticClient;
            _elasticSettings = elasticSettings.Value;
        }

        public async Task CreateHealthAsync(CreateElasticHealthDto health)
        {
            try
            {
                var response = _elasticClient.Index(
                new CreateElasticHealthDto()
                {
                    Id = health.Id,
                    Name = health.Name,
                    Description = health.Description,
                }
                , idx => idx.Index(_elasticSettings.HealthIndex));

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

        public async Task CreateHealthBulkAsync(List<CreateElasticHealthDto> healths)
        {
            try
            {
                var response = _elasticClient.IndexMany(healths, _elasticSettings.HealthIndex);

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

        public async Task SyncHealthsAsync(List<CreateElasticHealthDto> healths)
        {
            try
            {
                var deleteResult = _elasticClient.DeleteByQuery<CreateElasticHealthDto>(q => q
                    .Query(q => q.MatchAll())
                    .Index(_elasticSettings.HealthIndex));

                if (!deleteResult.IsValid)
                {
                    throw new Exception(deleteResult.DebugInformation);
                }

                var response = _elasticClient.IndexMany(healths, _elasticSettings.HealthIndex);

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
