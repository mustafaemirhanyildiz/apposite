using Apposite.Application.Dto.ElasticSearch.Health;

namespace Apposite.Application.Services.HealthService
{
    public interface IHealthService
    {
        public Task CreateHealthAsync(CreateElasticHealthDto health);
        public Task CreateHealthBulkAsync(List<CreateElasticHealthDto> healths);
        public Task SyncHealthsAsync(List<CreateElasticHealthDto> healths);
    }
}
