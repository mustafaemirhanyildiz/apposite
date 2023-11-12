using Apposite.Application.Dto.User;
using Apposite.Domain.Entities;

namespace Apposite.Application.Mapping
{
    public class CustomMapping : AutoMapper.Profile
    {
        public CustomMapping()
        {
            CreateMap<UserDto,Users>().ReverseMap();
        }
    }
}