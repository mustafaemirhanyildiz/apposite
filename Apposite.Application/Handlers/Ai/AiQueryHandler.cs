using Apposite.Application.Dto.Ai;
using Apposite.Application.Dto.Recipe;
using Apposite.Application.Mapping;
using Apposite.Application.Queries.Ai;
using Apposite.Application.Queries.Recipe;
using Apposite.Application.ServiceExtensions;
using Apposite.Application.Services.TokenService;
using Apposite.Core.Dtos;
using Apposite.Core.Pagination;
using Apposite.Domain.Entities;
using Apposite.Persistence;
using MediatR;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace Apposite.Application.Handlers.Ai
{
    public class AiQueryHandler : IRequestHandler<GetAiRecipesQuery, Response<List<GetAiRecipeDto>>>,
                                  IRequestHandler<GetPublicAiRecipesQuery, Response<List<GetAiRecipeDto>>>,
                                  IRequestHandler<GetAiRecipeByIdQuery, Response<GetAiRecipeDto>>
    {
        private readonly AppositeDbContext _dbContext;
        private readonly ITokenService _tokenService;

        public AiQueryHandler(AppositeDbContext dbContext, ITokenService tokenService)
        {
            _dbContext = dbContext;
            _tokenService = tokenService;
        }

        public async Task<Response<List<GetAiRecipeDto>>> Handle(GetAiRecipesQuery request, CancellationToken cancellationToken)
        {
            var userId = _tokenService.GetUserId();
            Expression<Func<AiRecipe, bool>> condition = x => x.UserId == userId;
            PaginationFilter paginationFilter = new PaginationFilter(request.Page, request.PageSize);
            var recipes = _dbContext.AiRecipes
                .Where(condition)
                .OrderBy(x => x.CreatedAt)
                .ApplyPaginationQueryable(paginationFilter)
                .Include(x => x.AiInstructions)
                .Include(x => x.AiIngredients)
                .ToList();

            var response = ObjectMapper.Mapper.Map<List<GetAiRecipeDto>>(recipes);
            var pager = new Pager()
            {
                PageNumber = request.Page,
                PageSize = request.PageSize,
                TotalRecords = _dbContext.AiRecipes.Where(condition).Count()
            };

            return Response<List<GetAiRecipeDto>>.Success(200, response, pager);

        }

        public async Task<Response<List<GetAiRecipeDto>>> Handle(GetPublicAiRecipesQuery request, CancellationToken cancellationToken)
        {
            var userId = _tokenService.GetUserId();
            Expression<Func<AiRecipe, bool>> condition = x => x.UserId != userId && x.IsPublic;
            PaginationFilter paginationFilter = new PaginationFilter(request.Page, request.PageSize);
            var recipes = _dbContext.AiRecipes
                .Where(condition)
                .OrderBy(x => x.CreatedAt)
                .ApplyPaginationQueryable(paginationFilter)
                .Include(x => x.AiInstructions)
                .Include(x => x.AiIngredients)
                .ToList();

            var response = ObjectMapper.Mapper.Map<List<GetAiRecipeDto>>(recipes);
            var pager = new Pager()
            {
                PageNumber = request.Page,
                PageSize = request.PageSize,
                TotalRecords = _dbContext.AiRecipes.Where(condition).Count()
            };

            return Response<List<GetAiRecipeDto>>.Success(200, response, pager);

        }

        public async Task<Response<GetAiRecipeDto>> Handle(GetAiRecipeByIdQuery request, CancellationToken cancellationToken)
        {
            var recipe = _dbContext.AiRecipes
                .Where(recipe => recipe.Id == request.Id)
                .OrderBy(x => x.CreatedAt)
                .Include(x => x.AiInstructions)
                .Include(x => x.AiIngredients)
                .FirstOrDefault();

            var response = ObjectMapper.Mapper.Map<GetAiRecipeDto>(recipe);


            return Response<GetAiRecipeDto>.Success(200, response);
        }
    }
}
