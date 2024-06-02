using Apposite.Application.Dto.Health;
using Apposite.Application.Dto.Recipe;
using Apposite.Application.Mapping;
using Apposite.Application.Queries.Health;
using Apposite.Application.Queries.Recipe;
using Apposite.Application.ServiceExtensions;
using Apposite.Application.Services;
using Apposite.Application.Services.TokenService;
using Apposite.Application.Settings;
using Apposite.Core.Dtos;
using Apposite.Core.Pagination;
using Apposite.Persistence;
using MediatR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Nest;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Handlers.Recipe
{
    public class RecipeQueryHandler : IRequestHandler<GetRecipesQuery, Response<List<RecipeDto>>>,
                                      IRequestHandler<GetMyRecipesQuery, Response<List<RecipeDto>>>,
                                      IRequestHandler<GetByIdRecipeQuery, Response<RecipeDto>>
                                       
    {
        private readonly AppositeDbContext _dbContext;
        private readonly RedisService _redisService;
        private readonly ITokenService _tokenService;


        public RecipeQueryHandler(AppositeDbContext dbContext, RedisService redisService, ITokenService tokenService)
        {
            _dbContext = dbContext;
            _redisService = redisService;
            _tokenService = tokenService;
        }
        public async Task<Response<List<RecipeDto>>> Handle(GetRecipesQuery request, CancellationToken cancellationToken)
        {
            PaginationFilter filter = new PaginationFilter(request.Page, request.PageSize);
            var recipes = _dbContext.Recipes
                .Where(x => x.Title.ToLower().Contains(request.SearchText.ToLower()) || x.Description.ToLower().Contains(request.SearchText.ToLower()))
                .Include(x => x.User)
                .Include(x => x.CuisinePreference)
                .Include(x => x.RecipeSteps)
                .Include(x => x.MediaFile)
                .Include(x => x.RecipeIngredients)
                    .ThenInclude(x => x.Ingredient)
                        .ThenInclude(x => x.MediaFile)
                .ApplyPaginationQueryable(filter)
                .ToList();

            var recipesDto = ObjectMapper.Mapper.Map<List<RecipeDto>>(recipes);

            Pager pager = new Pager()
            {
                PageNumber = filter.PageNumber,
                PageSize = filter.PageSize,
                TotalRecords = _dbContext.Recipes.Where(x => x.Title.ToLower().Contains(request.SearchText.ToLower()) || x.Description.ToLower().Contains(request.SearchText.ToLower())).Count()
            };


            return Response<List<RecipeDto>>.Success(200, recipesDto, pager);
        }


        public async Task<Response<List<RecipeDto>>> Handle(GetMyRecipesQuery request, CancellationToken cancellationToken)
        {
            var userId = _tokenService.GetUserId();
            var user = _dbContext.Users.FirstOrDefault(x => x.Id == userId);
            if (user == null)
                   return Response<List<RecipeDto>>.Fail(404, "User not found");

            PaginationFilter filter = new PaginationFilter(request.Page, request.PageSize);
            var recipes = _dbContext.Recipes
                .Where(x => x.Title.Contains(request.SearchText) || x.Description.Contains(request.SearchText) && x.UserId == userId)
                .Include(x => x.User)
                .Include(x => x.CuisinePreference)
                .Include(x => x.RecipeSteps)
                .Include(x => x.MediaFile)
                .Include(x => x.RecipeIngredients)
                    .ThenInclude(x => x.Ingredient)
                        .ThenInclude(x => x.MediaFile)
                .ApplyPaginationQueryable(filter)
                .ToList();

            var recipesDto = ObjectMapper.Mapper.Map<List<RecipeDto>>(recipes);

            Pager pager = new Pager()
            {
                PageNumber = filter.PageNumber,
                PageSize = filter.PageSize,
                TotalRecords = _dbContext.Recipes.Where(x => x.Title.Contains(request.SearchText) || x.Description.Contains(request.SearchText)).Count()
            };


            return Response<List<RecipeDto>>.Success(200, recipesDto, pager);
        }

        public async Task<Response<RecipeDto>> Handle(GetByIdRecipeQuery request, CancellationToken cancellationToken)
        {
            var userId = _tokenService.GetUserId();
            var user = _dbContext.Users.FirstOrDefault(x => x.Id == userId);
            if (user == null)
                return Response<RecipeDto>.Fail(404, "User not found");

            var recipe = _dbContext.Recipes
                .Where(x => x.Id == request.Id)
                .Include(x => x.User)
                .Include(x => x.CuisinePreference)
                .Include(x => x.RecipeSteps)
                .Include(x => x.MediaFile)
                .Include(x => x.RecipeIngredients)
                    .ThenInclude(x => x.Ingredient)
                        .ThenInclude(x => x.MediaFile)
                .FirstOrDefault();

            if (recipe == null)
                return Response<RecipeDto>.Fail(404);

            var recipeDto = ObjectMapper.Mapper.Map<RecipeDto>(recipe);



            return Response<RecipeDto>.Success(200, recipeDto);
        }

    }
}
