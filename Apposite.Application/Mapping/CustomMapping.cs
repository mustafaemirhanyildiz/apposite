using Apposite.Application.Commands.Auth;
using Apposite.Application.Commands.CuisinePreference;
using Apposite.Application.Commands.Ingredient;
using Apposite.Application.Commands.User;
using Apposite.Application.Dto.Auth;
using Apposite.Application.Dto.CuisinePreference;
using Apposite.Application.Dto.Ingredient;
using Apposite.Domain.Entities;

namespace Apposite.Application.Mapping
{
    public class CustomMapping : AutoMapper.Profile
    {
        public CustomMapping()
        {
            CreateMap<User,UserDto>().ReverseMap();
            CreateMap<CreateUserCommand,User>().ReverseMap();

            CreateMap<CreateIngredientCommand,Ingredient>().ReverseMap();
            CreateMap<CreateIngredientDto,Ingredient>().ReverseMap();
            CreateMap<Ingredient,IngredientDto>().ReverseMap();

            CreateMap<CreateCuisinePreferenceCommand, CuisinePreference>().ReverseMap();
            CreateMap<CreateCuisinePreferenceDto, CuisinePreference>().ReverseMap();
            CreateMap<CuisinePreference, CuisinePreferenceDto>().ReverseMap();

        }
    }
}