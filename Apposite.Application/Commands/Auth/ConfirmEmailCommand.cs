using Apposite.Core.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Commands.Auth
{
    public class ConfirmEmailCommand : IRequest<Response<NoContent>>
    {
        public string Email { get; set; }
        public string Token { get; set; }
    }
}
