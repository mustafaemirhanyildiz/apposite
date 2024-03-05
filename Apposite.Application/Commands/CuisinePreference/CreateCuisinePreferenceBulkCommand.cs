using Apposite.Application.Dto.CuisinePreference;
using Apposite.Core.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Commands.CuisinePreference
{
    public class CreateCuisinePreferenceBulkCommand : IRequest<Response<NoContent>>
    {
        public List<CreateCuisinePreferenceDto> CuisinePreferences { get; set; }
    }
}
