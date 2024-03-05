using Apposite.Application.Dto.Ingredient;
using Apposite.Application.Mapping;
using Apposite.Application.Queries.Ingredient;
using Apposite.Application.ServiceExtensions;
using Apposite.Application.Services;
using Apposite.Core.Dtos;
using Apposite.Core.Pagination;
using Apposite.Persistence;
using MediatR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace Apposite.Application.Handlers.Ingredient
{
    public class IngredientQueryHandler : IRequestHandler<GetIngredientsQuery, Response<List<IngredientDto>>>
    {
        private readonly AppositeDbContext _dbContext;
        private readonly ILogger<IngredientCommandHandler> _logger;
        private readonly RedisService _redisService;

        public IngredientQueryHandler(AppositeDbContext dbContext, ILogger<IngredientCommandHandler> logger, RedisService redisService)
        {
            _dbContext = dbContext;
            _logger = logger;
            _redisService = redisService;
        }

        public async Task<Response<List<IngredientDto>>> Handle(GetIngredientsQuery request, CancellationToken cancellationToken)
        {
            try{
                PaginationFilter filter = new PaginationFilter(request.Page, request.PageSize);
                var query = await _dbContext
                            .Ingredients
                            .Where(x => x.IsDeleted == false 
                                        && (string.IsNullOrEmpty(request.SearchText) || x.Name.ToLower().Contains(request.SearchText.ToLower()))
                            ).ApplyPaginationQueryable(filter).ToListAsync();
                
                if (query == null)
                {
                    return Response<List<IngredientDto>>.Fail(404,"No Ingredients Found");
                }

                var ingredientDto = ObjectMapper.Mapper.Map<List<IngredientDto>>(query); 

                Pager pager = new Pager(){
                    PageNumber = filter.PageNumber,
                    PageSize = filter.PageSize,
                    TotalRecords = await _dbContext.Ingredients.CountAsync()
                };
                

                return Response<List<IngredientDto>>.Success(200,ingredientDto,pager);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error in GetIngredientsQuery");
                return Response<List<IngredientDto>>.Fail(500,"Error in GetIngredientsQuery");
            }
        }
    }
}