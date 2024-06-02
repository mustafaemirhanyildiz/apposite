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
                Console.WriteLine(responseContent);
                responseContent = responseContent.Replace("Recipe ", "Recipe");
                responseContent = responseContent.Replace(" Recipe", "Recipe");
                responseContent = responseContent.Replace(" Recipe ", "Recipe");

                responseContent = responseContent.Replace("Calories ", "Calories");
                responseContent = responseContent.Replace(" Calories", "Calories");
                responseContent = responseContent.Replace(" Calories ", "Calories");

                responseContent = responseContent.Replace("Carbohydrates ", "Carbohydrates");
                responseContent = responseContent.Replace(" Carbohydrates", "Carbohydrates");
                responseContent = responseContent.Replace(" Carbohydrates ", "Carbohydrates");

                responseContent = responseContent.Replace("Fat ", "Fat");
                responseContent = responseContent.Replace(" Fat", "Fat");
                responseContent = responseContent.Replace(" Fat ", "Fat");

                responseContent = responseContent.Replace("Description ", "Description");
                responseContent = responseContent.Replace(" Description", "Description");
                responseContent = responseContent.Replace(" Description ", "Description");

                responseContent = responseContent.Replace("Name ", "Name");
                responseContent = responseContent.Replace(" Name", "Name");
                responseContent = responseContent.Replace(" Name ", "Name");

                responseContent = responseContent.Replace("Protein ", "Protein");
                responseContent = responseContent.Replace(" Protein", "Protein");
                responseContent = responseContent.Replace(" Protein ", "Protein");

                responseContent = responseContent.Replace("PreparationTime ", "PreparationTime");
                responseContent = responseContent.Replace(" PreparationTime", "PreparationTime");
                responseContent = responseContent.Replace(" PreparationTime ", "PreparationTime");

                responseContent = responseContent.Replace("Servings ", "Servings");
                responseContent = responseContent.Replace(" Servings", "Servings");
                responseContent = responseContent.Replace(" Servings ", "Servings");

                responseContent = responseContent.Replace("Quantity ", "Quantity");
                responseContent = responseContent.Replace(" Quantity", "Quantity");
                responseContent = responseContent.Replace(" Quantity ", "Quantity");

                responseContent = responseContent.Replace("QuantityType ", "QuantityType");
                responseContent = responseContent.Replace(" QuantityType", "QuantityType");
                responseContent = responseContent.Replace(" QuantityType ", "QuantityType");
                
                responseContent = responseContent.Replace("StepNumber ", "StepNumber");
                responseContent = responseContent.Replace(" StepNumber", "StepNumber");
                responseContent = responseContent.Replace(" StepNumber ", "StepNumber");



                responseContent = responseContent.Replace("recipe ", "recipe");
                responseContent = responseContent.Replace(" recipe", "recipe");
                responseContent = responseContent.Replace(" recipe ", "recipe");

                responseContent = responseContent.Replace("calories ", "calories");
                responseContent = responseContent.Replace(" calories", "calories");
                responseContent = responseContent.Replace(" calories ", "calories");

                responseContent = responseContent.Replace("carbohydrates ", "carbohydrates");
                responseContent = responseContent.Replace(" carbohydrates", "carbohydrates");
                responseContent = responseContent.Replace(" carbohydrates ", "carbohydrates");

                responseContent = responseContent.Replace("fat ", "fat");
                responseContent = responseContent.Replace(" fat", "fat");
                responseContent = responseContent.Replace(" fat ", "fat");

                responseContent = responseContent.Replace("description ", "description");
                responseContent = responseContent.Replace(" description", "description");
                responseContent = responseContent.Replace(" description ", "description");

                responseContent = responseContent.Replace("name ", "name");
                responseContent = responseContent.Replace(" name", "name");
                responseContent = responseContent.Replace(" name ", "name");

                responseContent = responseContent.Replace("protein ", "protein");
                responseContent = responseContent.Replace(" protein", "protein");
                responseContent = responseContent.Replace(" protein ", "protein");

                responseContent = responseContent.Replace("preparationTime ", "preparationTime");
                responseContent = responseContent.Replace(" preparationTime", "preparationTime");
                responseContent = responseContent.Replace(" preparationTime ", "preparationTime");

                responseContent = responseContent.Replace("servings ", "servings");
                responseContent = responseContent.Replace(" servings", "servings");
                responseContent = responseContent.Replace(" servings ", "servings");

                responseContent = responseContent.Replace("quantity ", "quantity");
                responseContent = responseContent.Replace(" quantity", "quantity");
                responseContent = responseContent.Replace(" quantity ", "quantity");

                responseContent = responseContent.Replace("quantityType ", "quantityType");
                responseContent = responseContent.Replace(" quantityType", "quantityType");
                responseContent = responseContent.Replace(" quantityType ", "quantityType");

                responseContent = responseContent.Replace("stepNumber ", "stepNumber");
                responseContent = responseContent.Replace(" stepNumber", "stepNumber");
                responseContent = responseContent.Replace(" stepNumber ", "stepNumber");

                var responseObject = JObject.Parse(responseContent);
                var recipeObject = JObject.Parse(responseObject["Recipe"].ToString());
                var Ingredients = JArray.Parse(responseObject["Ingredients"].ToString());
                var Instructions = JArray.Parse(recipeObject["Instructions"].ToString());

                AiRecipe aiRecipe = new()
                {
                    Calories = double.Parse(recipeObject.ContainsKey("Calories") ? recipeObject["Calories"].ToString() : recipeObject.ContainsKey("calories") ? recipeObject["calories"].ToString() : "0"),
                    Carbohydrates = double.Parse(recipeObject.ContainsKey("Carbohydrates") ? recipeObject["Carbohydrates"].ToString() : recipeObject.ContainsKey("carbohydrates") ? recipeObject["carbohydrates"].ToString() : "0"),
                    Fat = double.Parse(recipeObject.ContainsKey("Fat") ? recipeObject["Fat"].ToString() : recipeObject.ContainsKey("fat") ? recipeObject["fat"].ToString() : "0"),
                    Description = recipeObject.ContainsKey("Description") ? recipeObject["Description"].ToString() : recipeObject.ContainsKey("description") ? recipeObject["description"].ToString() : string.Empty,
                    Name = recipeObject.ContainsKey("Name") ? recipeObject["Name"].ToString() : recipeObject.ContainsKey("name") ? recipeObject["name"].ToString() : string.Empty,
                    Protein = double.Parse(recipeObject.ContainsKey("Protein") ? recipeObject["Protein"].ToString() : recipeObject.ContainsKey("protein") ? recipeObject["protein"].ToString() : "0"),
                    UserId = userId,
                    IsPublic = true,
                    PreparationTime = int.Parse(recipeObject.ContainsKey("PreparationTime") ? recipeObject["PreparationTime"].ToString() : recipeObject.ContainsKey("preparationTime") ? recipeObject["preparationTime"].ToString() : "0"),
                    Servings = int.Parse(recipeObject.ContainsKey("Servings") ? recipeObject["Servings"].ToString() : recipeObject.ContainsKey("servings") ? recipeObject["servings"].ToString() : "0"),
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
                        Name = ingredient["Name"]?.ToString() ?? ingredient["name"]?.ToString() ?? string.Empty,
                        Description = ingredient["Description"]?.ToString() ?? ingredient["description"]?.ToString() ?? string.Empty,
                        Carbohydrates = double.Parse(ingredient["Carbohydrates"]?.ToString() ?? ingredient["carbohydrates"]?.ToString() ?? "0"),
                        Fat = double.Parse(ingredient["Fat"]?.ToString() ?? ingredient["fat"]?.ToString() ?? "0"),
                        Calories = double.Parse(ingredient["Calories"]?.ToString() ?? ingredient["calories"]?.ToString() ?? "0"),
                        Protein = double.Parse(ingredient["Protein"]?.ToString() ?? ingredient["protein"]?.ToString() ?? "0"),
                        Quantity = double.Parse(ingredient["Quantity"]?.ToString() ?? ingredient["quantity"]?.ToString() ?? "0"),
                        QuantityType = ingredient["QuantityType"]?.ToString() ?? ingredient["quantityType"]?.ToString() ?? string.Empty,
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
                        Description = instruction["Description"]?.ToString() ?? instruction["description"]?.ToString() ?? string.Empty,
                        StepNumber = int.Parse(instruction["StepNumber"]?.ToString() ?? instruction["stepNumber"]?.ToString() ?? "0"),
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
