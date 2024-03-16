using MediatR;
using Apposite.Core.Dtos;
using Apposite.Application.Dto.Auth;
using System.ComponentModel;

namespace Apposite.Application.Commands.Auth
{
    public class LoginCommand: IRequest<Response<LoginDto>>
    {
        [DefaultValue("admin@admin.com")]
        public string Email { get; init; }
        [DefaultValue("P@ssw0rd")]
        public string Password { get; init; }
    }
}
