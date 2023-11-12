using System.Text.Json.Serialization;
using Apposite.Application.Dto.User;
using Apposite.Core.Dtos;
using Apposite.Domain.Enums;
using MediatR;

namespace Apposite.Application.Commands.User
{
    public class CreateUserCommand : IRequest<Response<UserDto>>
    {
        public string Name { get; set; }

        public string Surname { get; set; }
        public string Email { get; set; }
        public string UserName { get { return Email; } }
        public string Password { get; set; }
        [JsonConverter(typeof(JsonStringEnumConverter))]
        public RoleList Role { get; set; }
        public string PhoneNumber { get; set; }

    }
}
