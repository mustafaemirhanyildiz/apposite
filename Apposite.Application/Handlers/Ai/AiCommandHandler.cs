using Apposite.Application.Commands.Ai;
using Apposite.Application.Dto.Ai;
using Apposite.Application.Services.TokenService;
using Apposite.Application.Services;
using Apposite.Core.Dtos;
using Apposite.Persistence;
using MediatR;
using Microsoft.Extensions.Configuration;
using Apposite.Application.Mapping;
using Newtonsoft.Json;
using System.Text;
using Newtonsoft.Json.Linq;
using Apposite.Domain.Entities;

namespace Apposite.Application.Handlers.Ai
{
    public class AiCommandHandler : IRequestHandler<CreateAiRecipeCommand, Response<CreateAiRecipeDto>>,
                                    IRequestHandler<PublishAiRecipeCommand, Response<NoContent>>
    {
        private readonly AppositeDbContext _dbContext;
        private readonly RedisService _redisService;
        private readonly ITokenService _tokenService;
        private readonly IConfiguration _configuration;
        private readonly string _aiUrl;

        public AiCommandHandler(AppositeDbContext dbContext, RedisService redisService, ITokenService tokenService, IConfiguration configuration)
        {
            _dbContext = dbContext;
            _redisService = redisService;
            _tokenService = tokenService;
            _configuration = configuration;
            _aiUrl = _configuration["FastApi:Url"];
        }

        public async Task<Response<NoContent>> Handle(PublishAiRecipeCommand request, CancellationToken cancellationToken)
        {
            var userId = _tokenService.GetUserId();
            var recipe = _dbContext.AiRecipes.FirstOrDefault(x => x.Id == request.RecipeId);
            if (recipe == null)
                return Response<NoContent>.Fail(404, "Recipe not found");

            if (recipe.UserId != userId)
                return Response<NoContent>.Fail(403, "You are not authorized to publish this recipe");

            if(recipe.IsPublic)
                return Response<NoContent>.Fail(400, "Recipe is already public");

            recipe.IsPublic = true;
            await _dbContext.SaveChangesAsync();

            return Response<NoContent>.Success(204);
        }

        async Task<Response<CreateAiRecipeDto>> IRequestHandler<CreateAiRecipeCommand, Response<CreateAiRecipeDto>>.Handle(CreateAiRecipeCommand request, CancellationToken cancellationToken)
        {
            var userId = _tokenService.GetUserId();
            var user = _dbContext.Users.FirstOrDefault(x => x.Id == userId);
            if (user == null)
                return Response<CreateAiRecipeDto>.Fail(404,"User not found");

            var oldRecipes = _dbContext.AiRecipes.Where(x => x.UserId == userId).Select(x => x.Name).ToList();

            var client = new HttpClient();
            var request_Api = new HttpRequestMessage(HttpMethod.Post, _aiUrl + "/createRecipeWithGpt");
            CreateAiRecipeFastApiDto json_data = ObjectMapper.Mapper.Map<CreateAiRecipeFastApiDto>(request);
            json_data.OldRecipes = oldRecipes;
            request_Api.Content = new StringContent(JsonConvert.SerializeObject(json_data), Encoding.UTF8, "application/json");
            var response = await client.SendAsync(request_Api);

            if (response.IsSuccessStatusCode)
            { 
                var responseContent = await response.Content.ReadAsStringAsync();
                responseContent = responseContent.Replace("```json", "");
                responseContent = responseContent.Replace("```", "");
                var responseObject = JObject.Parse(responseContent);
                var recipeObject = JObject.Parse(responseObject["Recipe"].ToString());
                var Ingredients = JArray.Parse(responseObject["Ingredients"].ToString());
                var Instructions = JArray.Parse(recipeObject["Instructions"].ToString());

                AiRecipe aiRecipe = new()
                {
                    Calories = double.Parse(recipeObject["Calories"].ToString()),
                    Carbohydrates = double.Parse(recipeObject["Carbohydrates"].ToString()),
                    Fat = double.Parse(recipeObject["Fat"].ToString()),
                    Description = recipeObject["Description"].ToString(),
                    Name = recipeObject["Name"].ToString(),
                    Protein = double.Parse(recipeObject["Protein"].ToString()),
                    UserId = userId,
                    IsPublic = true,
                    PreparationTime = int.Parse(recipeObject["PreparationTime"].ToString()),
                    Servings = int.Parse(recipeObject["Servings"].ToString()),
                    Id = Guid.NewGuid()
                };
                CreateAiRecipeDto recipe = ObjectMapper.Mapper.Map<CreateAiRecipeDto>(aiRecipe);
                recipe.AiIngredients = new();
                recipe.AiInstructions = new();
                foreach (var ingredient in Ingredients)
                {
                    AiIngredient aiIngredient = new()
                    {
                        Id = Guid.NewGuid(),
                        Name = ingredient["Name"].ToString(),
                        Description = ingredient["Description"].ToString(),
                        Carbohydrates = double.Parse(ingredient["Carbohydrates"].ToString()),
                        Fat = double.Parse(ingredient["Fat"].ToString()),
                        Calories = double.Parse(ingredient["Calories"].ToString()),
                        Protein = double.Parse(ingredient["Protein"].ToString()),
                        Quantity = double.Parse(ingredient["Quantity"].ToString()),
                        QuantityType = ingredient["QuantityType"].ToString(),
                        AiRecipeId = aiRecipe.Id
                    };
                    recipe.AiIngredients.Add(ObjectMapper.Mapper.Map<AiIngredientDto>(aiIngredient));
                    _dbContext.AiIngredients.Add(aiIngredient);
                }

                foreach (var instruction in Instructions)
                {
                    AiInstruction aiInstruction = new()
                    {
                        Id = Guid.NewGuid(),
                        Description = instruction["Description"].ToString(),
                        StepNumber = int.Parse(instruction["StepNumber"].ToString()),
                        AiRecipeId = aiRecipe.Id
                    };
                    recipe.AiInstructions.Add(ObjectMapper.Mapper.Map<AiInstructionDto>(aiInstruction));
                    _dbContext.AiInstructions.Add(aiInstruction);
                }
                _dbContext.AiRecipes.Add(aiRecipe);

                await _dbContext.SaveChangesAsync();
                return Response<CreateAiRecipeDto>.Success(200,recipe);
            }
            else
                return Response<CreateAiRecipeDto>.Fail(500, "Error while creating recipe");

        }
    }
}
