using System.Text.Json.Serialization;
using Apposite.Application.Dto.Auth;
using Apposite.Core.Dtos;
using Apposite.Domain.Enums;
using MediatR;

namespace Apposite.Application.Commands.Auth
{
    public class CreateUserCommand : IRequest<Response<UserDto>>
    {
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Email { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
    }
}
