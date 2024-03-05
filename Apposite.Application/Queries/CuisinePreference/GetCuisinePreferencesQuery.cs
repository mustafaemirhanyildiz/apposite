using Apposite.Application.Dto.CuisinePreference;
using Apposite.Application.Dto.Ingredient;
using Apposite.Core.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Queries.CuisinePreference
{
    public class GetCuisinePreferencesQuery : IRequest<Response<List<CuisinePreferenceDto>>>
    {
        public string SearchText { get; init; } = string.Empty;
        public int Page { get; init; }
        public int PageSize { get; init; }
    }
}
