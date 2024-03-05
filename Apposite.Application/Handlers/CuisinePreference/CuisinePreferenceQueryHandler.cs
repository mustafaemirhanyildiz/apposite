
using Apposite.Application.Dto.CuisinePreference;
using Apposite.Application.Dto.Ingredient;
using Apposite.Application.Handlers.Ingredient;
using Apposite.Application.Mapping;
using Apposite.Application.Queries.CuisinePreference;
using Apposite.Application.Queries.Ingredient;
using Apposite.Application.ServiceExtensions;
using Apposite.Application.Services;
using Apposite.Core.Dtos;
using Apposite.Core.Pagination;
using Apposite.Persistence;
using MediatR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace Apposite.Application.Handlers.CuisinePreference
{
    public class CuisinePreferenceQueryHandler : IRequestHandler<GetCuisinePreferencesQuery, Response<List<CuisinePreferenceDto>>>
    {
        private readonly AppositeDbContext _dbContext;
        private readonly RedisService _redisService;

        public CuisinePreferenceQueryHandler(AppositeDbContext dbContext, RedisService redisService)
        {
            _dbContext = dbContext;
            _redisService = redisService;
        }

        public async Task<Response<List<CuisinePreferenceDto>>> Handle(GetCuisinePreferencesQuery request, CancellationToken cancellationToken)
        {
            PaginationFilter filter = new PaginationFilter(request.Page, request.PageSize);
            var query = await _dbContext
                        .CuisinePreferences
                        .Where(x => x.IsDeleted == false
                                    && (string.IsNullOrEmpty(request.SearchText) || x.Name.ToLower().Contains(request.SearchText.ToLower()))
                        ).ApplyPaginationQueryable(filter).ToListAsync();

            if (query == null)
            {
                return Response<List<CuisinePreferenceDto>>.Fail(404, "No CuisinePreferences Found");
            }

            var CuisinePreferencesDto = ObjectMapper.Mapper.Map<List<CuisinePreferenceDto>>(query);

            Pager pager = new Pager()
            {
                PageNumber = filter.PageNumber,
                PageSize = filter.PageSize,
                TotalRecords = await _dbContext.Ingredients.CountAsync()
            };


            return Response<List<CuisinePreferenceDto>>.Success(200, CuisinePreferencesDto, pager);
        }
    }
}
