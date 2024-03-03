using Apposite.Application.Commands.Auth;
using Apposite.Application.Dto.Auth;
using Apposite.Domain.Entities;

namespace Apposite.Application.Mapping
{
    public class CustomMapping : AutoMapper.Profile
    {
        public CustomMapping()
        {
            CreateMap<User,UserDto>().ReverseMap();
            CreateMap<CreateUserCommand,User>().ReverseMap();
        }
    }
}