using MediatR;
using Apposite.Application.Dto.Login;
using Apposite.Core.Dtos;

namespace Apposite.Application.Commands.Login
{
    public class LoginCommand: IRequest<Response<LoginDto>>
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public string userKey { get; set; }
        public string captchaKey { get; set; }
    }
}
