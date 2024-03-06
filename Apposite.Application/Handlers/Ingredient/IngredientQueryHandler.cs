using Apposite.Application.Dto.Ingredient;
using Apposite.Application.Mapping;
using Apposite.Application.Queries.Ingredient;
using Apposite.Application.ServiceExtensions;
using Apposite.Application.Services;
using Apposite.Application.Settings;
using Apposite.Core.Dtos;
using Apposite.Core.Pagination;
using Apposite.Persistence;
using MediatR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Nest;

namespace Apposite.Application.Handlers.Ingredient
{
    public class IngredientQueryHandler : IRequestHandler<GetIngredientsQuery, Response<List<IngredientDto>>>
    {
        private readonly AppositeDbContext _dbContext;
        private readonly RedisService _redisService;
        private readonly IElasticClient _elasticClient;
        private readonly ElasticSettings _elasticSettings;

        public IngredientQueryHandler(AppositeDbContext dbContext, RedisService redisService, IElasticClient elasticClient, IOptions<ElasticSettings> elasticSettings)
        {
            _dbContext = dbContext;
            _redisService = redisService;
            _elasticClient = elasticClient;
            _elasticSettings = elasticSettings.Value;
        }

        public async Task<Response<List<IngredientDto>>> Handle(GetIngredientsQuery request, CancellationToken cancellationToken)
        {
                PaginationFilter filter = new PaginationFilter(request.Page, request.PageSize);
                var searchResponse = await _elasticClient.SearchAsync<IngredientDto>(s => s
                    .Index(_elasticSettings.IngredientIndex)
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
                    .From(filter.PageNumber-1)
                    .Size(filter.PageSize)
                );

                var ingredientDto = searchResponse.Documents.ToList();

                Pager pager = new Pager(){
                    PageNumber = filter.PageNumber,
                    PageSize = filter.PageSize,
                    TotalRecords = searchResponse.Total 
                };
                

                return Response<List<IngredientDto>>.Success(200,ingredientDto,pager);
        }
    }
}