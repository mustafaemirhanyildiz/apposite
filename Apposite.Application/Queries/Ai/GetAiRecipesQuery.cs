using Apposite.Application.Dto.Ai;
using Apposite.Core.Dtos;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Application.Queries.Ai
{
    public class GetAiRecipesQuery : IRequest<Response<List<GetAiRecipeDto>>>
    {
        public int Page { get; init; }
        public int PageSize { get; init; }
    }
}
