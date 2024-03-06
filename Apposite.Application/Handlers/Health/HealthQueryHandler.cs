using Apposite.Application.Dto.Health;
using Apposite.Application.Queries.Health;
using Apposite.Application.Services;
using Apposite.Application.Settings;
using Apposite.Core.Dtos;
using Apposite.Core.Pagination;
using Apposite.Persistence;
using MediatR;
using Microsoft.Extensions.Options;
using Nest;

namespace Apposite.Application.Handlers.Health
{
    public class HealthQueryHandler : IRequestHandler<GetHealthQuery, Response<List<HealthDto>>>
    {
        private readonly AppositeDbContext _dbContext;
        private readonly RedisService _redisService;
        private readonly IElasticClient _elasticClient;
        private readonly ElasticSettings _elasticSettings;


        public HealthQueryHandler(AppositeDbContext dbContext, RedisService redisService, IElasticClient elasticClient, IOptions<ElasticSettings> elasticSettings)
        {
            _dbContext = dbContext;
            _redisService = redisService;
            _elasticClient = elasticClient;
            _elasticSettings = elasticSettings.Value;
        }
        public async Task<Response<List<HealthDto>>> Handle(GetHealthQuery request, CancellationToken cancellationToken)
        {
            PaginationFilter filter = new PaginationFilter(request.Page, request.PageSize);
            var searchResponse = await _elasticClient.SearchAsync<HealthDto>(s => s
                .Index(_elasticSettings.HealthIndex)
                .Query(q => q
                     .MultiMatch(m => m
                                .Fields(f => f
                                    .Field(ff => ff.Name)
                                    .Field(ff => ff.Description)
                                )
                                .Query(request.SearchText)
                                .Analyzer("turkish_search_analyser")
                            )
                )
                .From(filter.PageNumber - 1)
                .Size(filter.PageSize)
            );

            var healthDto = searchResponse.Documents.ToList();

            Pager pager = new Pager()
            {
                PageNumber = filter.PageNumber,
                PageSize = filter.PageSize,
                TotalRecords = searchResponse.Total
            };


            return Response<List<HealthDto>>.Success(200, healthDto, pager);
        }
    }
}
