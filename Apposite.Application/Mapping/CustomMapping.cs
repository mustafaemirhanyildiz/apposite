using Apposite.Application.Commands.Auth;
using Apposite.Application.Commands.Ingredient;
using Apposite.Application.Commands.User;
using Apposite.Application.Dto.Auth;
using Apposite.Application.Dto.ElasticSearch.Ingredient;
using Apposite.Application.Dto.CuisinePreference;
using Apposite.Application.Dto.Ingredient;
using Apposite.Domain.Entities;
using Apposite.Application.Commands.CuisinePreference;
using Apposite.Application.Commands.Health;
using Apposite.Application.Dto.Health;
using Apposite.Application.Dto.ElasticSearch.CuisinePreference;
using Apposite.Application.Dto.ElasticSearch.Health;
using Apposite.Application.Commands.Ai;
using Apposite.Application.Dto.Ai;

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
            CreateMap<CreateElasticIngredientDto,Ingredient>().ReverseMap();

            CreateMap<CreateCuisinePreferenceCommand, CuisinePreference>().ReverseMap();
            CreateMap<CreateCuisinePreferenceDto, CuisinePreference>().ReverseMap();
            CreateMap<CuisinePreferenceDto, CuisinePreference>().ReverseMap();
            CreateMap<CreateElasticCuisinePreferenceDto, CuisinePreference>().ReverseMap();

            CreateMap<CreateHealthCommand, Health>().ReverseMap();
            CreateMap<CreateHealthDto, Health>().ReverseMap();
            CreateMap<HealthDto, Health>().ReverseMap();
            CreateMap<CreateElasticHealthDto, Health>().ReverseMap();

            CreateMap<CreateRecipeCommand, CreateRecipeFastApiDto>().ForMember(dest => dest.Language, opt => opt.MapFrom(src => src.Language.ToString()));
            CreateMap<CreateRecipeDto, AiRecipe>().ReverseMap();
            CreateMap<AiIngredientDto, AiIngredient>().ReverseMap();
            CreateMap<AiInstructionDto, AiInstruction>().ReverseMap();

            CreateMap<GetRecipeDto, AiRecipe>().ReverseMap();



            #region Recipe Mapping

            CreateMap<Apposite.Application.Commands.Recipe.CreateRecipeCommand, Recipe>()
                    .ForMember(dest => dest.MediaFileId, opt => opt.MapFrom(src => src.CoverPhotoId));

            #endregion
        }
    }
}