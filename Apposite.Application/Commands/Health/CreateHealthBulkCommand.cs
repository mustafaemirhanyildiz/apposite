using Apposite.Application.Dto.Health;
using Apposite.Core.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Commands.Health
{
    public class CreateHealthBulkCommand : IRequest<Response<NoContent>>
    {
        public List<CreateHealthDto> Healths { get; set; }
    }
}
