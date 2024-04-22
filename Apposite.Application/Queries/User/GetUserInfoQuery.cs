using Apposite.Application.Dto.User;
using Apposite.Core.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Queries.User
{
    public class GetUserInfoQuery : IRequest<Response<GetUserInfoDto>>
    {

    }
}
