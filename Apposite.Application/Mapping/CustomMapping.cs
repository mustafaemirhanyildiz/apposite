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
using Apposite.Application.Dto.MediaFile;
using Apposite.Application.ServiceExtensions;
using Apposite.Application.Dto.Recipe;

namespace Apposite.Application.Mapping
{
    public class CustomMapping : AutoMapper.Profile
    {
        public CustomMapping()
        {
            CreateMap<User, UserDto>().ReverseMap();
            CreateMap<CreateUserCommand, User>().ReverseMap();

            CreateMap<CreateIngredientCommand, Ingredient>().ReverseMap();
            CreateMap<CreateIngredientDto, Ingredient>().ReverseMap();
            CreateMap<Ingredient, IngredientDto>().ForMember(dest => dest.ImageUrl, opt => opt.MapFrom(src => $"{ConfigurationExtension.config.GetSection("AzureBlobSettings:BaseUri").Value}mediafiles/{ConfigurationExtension.config.GetSection("AzureBlobSettings:AppositeContainer").Value}/{src.MediaFile.FileName}"));
            CreateMap<Ingredient, CreateElasticIngredientDto>().ForMember(dest => dest.ImageUrl, opt => opt.MapFrom(src => $"{ConfigurationExtension.config.GetSection("AzureBlobSettings:BaseUri").Value}mediafiles/{ConfigurationExtension.config.GetSection("AzureBlobSettings:AppositeContainer").Value}/{src.MediaFile.FileName}"));

            CreateMap<CreateCuisinePreferenceCommand, CuisinePreference>().ReverseMap();
            CreateMap<CreateCuisinePreferenceDto, CuisinePreference>().ReverseMap();
            CreateMap<CuisinePreferenceDto, CuisinePreference>().ReverseMap();
            CreateMap<CreateElasticCuisinePreferenceDto, CuisinePreference>().ReverseMap();

            CreateMap<CreateHealthCommand, Health>().ReverseMap();
            CreateMap<CreateHealthDto, Health>().ReverseMap();
            CreateMap<HealthDto, Health>().ReverseMap();
            CreateMap<CreateElasticHealthDto, Health>().ReverseMap();

            CreateMap<CreateAiRecipeCommand, CreateAiRecipeFastApiDto>().ForMember(dest => dest.Language, opt => opt.MapFrom(src => src.Language.ToString()));
            CreateMap<CreateAiRecipeDto, AiRecipe>().ReverseMap();
            CreateMap<AiIngredientDto, AiIngredient>().ReverseMap();
            CreateMap<AiInstructionDto, AiInstruction>().ReverseMap();

            CreateMap<GetAiRecipeDto, AiRecipe>().ReverseMap();



            #region Recipe Mapping

            CreateMap<Apposite.Application.Commands.Recipe.CreateRecipeCommand, Recipe>()
                    .ForMember(dest => dest.MediaFileId, opt => opt.MapFrom(src => src.CoverPhotoId));
            CreateMap<RecipeStepDto, RecipeStep>().ReverseMap();
            CreateMap<RecipeIngredientDto, RecipeIngredient>().ReverseMap();
            CreateMap<Recipe, RecipeDto>()
                .ForMember(dest => dest.ImageUrl, opt => opt.MapFrom(src => $"{ConfigurationExtension.config.GetSection("AzureBlobSettings:BaseUri").Value}mediafiles/{ConfigurationExtension.config.GetSection("AzureBlobSettings:AppositeContainer").Value}/{src.MediaFile.FileName}"))
                .ForMember(dest => dest.User, opt => opt.MapFrom(src => new RecipeUserDto() { Id = src.User.Id, Name = src.User.Name, Surname = src.User.Surname }))
                .ForMember(dest => dest.CuisinePreference, opt => opt.MapFrom(src => new RecipeCuisineDto() { Id = src.CuisinePreference.Id, Name = src.CuisinePreference.Name, Description = src.CuisinePreference.Description }))
                .ForMember(dest => dest.RecipeSteps, opt => opt.MapFrom(src => src.RecipeSteps.Select(x => new GetRecipeStepDto() { Description = x.Description, StepNumber = x.StepNumber }).ToList()))
                .ForMember(dest => dest.RecipeIngredients, opt => opt.MapFrom(src => src.RecipeIngredients.Select(x => new GetRecipeIngredientDto() { Id = x.IngredientId, Description = x.Ingredient.Description, Calories = x.Ingredient.Calories, Fat = x.Ingredient.Fat, Name = x.Ingredient.Name, Protein = x.Ingredient.Protein, ImageUrl = $"{ConfigurationExtension.config.GetSection("AzureBlobSettings:BaseUri").Value}mediafiles/{ConfigurationExtension.config.GetSection("AzureBlobSettings:AppositeContainer").Value}/{x.Ingredient.MediaFile.FileName}", Quantity = x.Quantity, QuantityType = x.QuantityType }).ToList()));


            #endregion


            #region MediaFile Mapping
            CreateMap<MediaFile, GetAllMediaFileDto>()
                .ForMember(dest => dest.FileUrl, opt => opt.MapFrom(src => $"{ConfigurationExtension.config.GetSection("AzureBlobSettings:BaseUri").Value}mediafiles/{ConfigurationExtension.config.GetSection("AzureBlobSettings:AppositeContainer").Value}/{src.FileName}"));
            #endregion

        }
    }
}