
using Apposite.Application.Dto.CuisinePreference;
using Apposite.Application.Queries.CuisinePreference;
using Apposite.Application.Services;
using Apposite.Application.Settings;
using Apposite.Core.Dtos;
using Apposite.Core.Pagination;
using Apposite.Persistence;
using MediatR;
using Microsoft.Extensions.Options;
using Nest;

namespace Apposite.Application.Handlers.CuisinePreference
{
    public class CuisinePreferenceQueryHandler : IRequestHandler<GetCuisinePreferencesQuery, Response<List<CuisinePreferenceDto>>>
    {
        private readonly AppositeDbContext _dbContext;
        private readonly RedisService _redisService;
        private readonly IElasticClient _elasticClient;
        private readonly ElasticSettings _elasticSettings;



        public CuisinePreferenceQueryHandler(AppositeDbContext dbContext, RedisService redisService, IElasticClient elasticClient, IOptions<ElasticSettings> elasticSettings)
        {
            _dbContext = dbContext;
            _redisService = redisService;
            _elasticClient = elasticClient;
            _elasticSettings = elasticSettings.Value;
        }

        public async Task<Response<List<CuisinePreferenceDto>>> Handle(GetCuisinePreferencesQuery request, CancellationToken cancellationToken)
        {
            PaginationFilter filter = new PaginationFilter(request.Page, request.PageSize);
            var searchResponse = await _elasticClient.SearchAsync<CuisinePreferenceDto>(s => s
                .Index(_elasticSettings.CuisinePreferenceIndex)
                .Query(q => q
                     .MultiMatch(m => m
                                .Fields(f => f
                                    .Field(ff => ff.Name)
                                )
                                .Query(request.SearchText)
                                .Analyzer("turkish_search_analyser")
                            )
                )
                .From(filter.PageNumber - 1)
                .Size(filter.PageSize)
            );

            var cuisinePreferenceDtos =  searchResponse.Documents
                .GroupBy(i => i.Name.ToLowerInvariant())
                .Select(g => g.First())
                .ToList();

            Pager pager = new Pager()
            {
                PageNumber = filter.PageNumber,
                PageSize = filter.PageSize,
                TotalRecords = cuisinePreferenceDtos.Count
            };


            return Response<List<CuisinePreferenceDto>>.Success(200, cuisinePreferenceDtos, pager);
        }
    }
}
