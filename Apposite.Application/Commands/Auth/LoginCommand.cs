using MediatR;
using Apposite.Core.Dtos;
using Apposite.Application.Dto.Auth;

namespace Apposite.Application.Commands.Auth
{
    public class LoginCommand: IRequest<Response<LoginDto>>
    {
        public string Email { get; init; }
        public string Password { get; init; }
    }
}
