using Apposite.Core.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Commands.User
{
    public class DeleteUserCommand : IRequest<Response<NoContent>>
    {

    }
}
