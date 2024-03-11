using Apposite.Core.Dtos;
using MediatR;

namespace Apposite.Application.Commands.Auth
{
    public class ForgotPasswordCommand : IRequest<Response<NoContent>>
    {
        public required string Email { get; set; }
    }
}
