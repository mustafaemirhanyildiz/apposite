using Apposite.Application.Dto.Recipe;
using Apposite.Core.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Queries.Recipe
{
    public class GetMyRecipesQuery : IRequest<Response<List<RecipeDto>>>
    {
        public string SearchText { get; init; } = string.Empty;
        public int Page { get; init; }
        public int PageSize { get; init; }
    }
}
