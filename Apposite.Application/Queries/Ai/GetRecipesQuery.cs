using Apposite.Application.Dto.Ai;
using Apposite.Core.Dtos;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Application.Queries.Ai
{
    public class GetRecipesQuery : IRequest<Response<List<GetRecipeDto>>>
    {
        public int Page { get; init; }
        public int PageSize { get; init; }
    }
}
