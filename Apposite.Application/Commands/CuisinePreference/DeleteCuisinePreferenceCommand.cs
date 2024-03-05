using Apposite.Core.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Commands.CuisinePreference
{
    public class DeleteCuisinePreferenceCommand : IRequest<Response<NoContent>>
    {
        public Guid Id { get; set;}
    }
}
