
using Apposite.Application.Commands.Recipe;
using Apposite.Application.Dto.Recipe;
using Apposite.Application.Queries.Recipe;
using Apposite.Core.ControllerBases;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Api.Controllers
{
    [ApiController]
    [Authorize]
    [Route("api/[controller]")]
    public class RecipeController : CustomControllerBase
    {
        private readonly IMediator _mediator;

        public RecipeController(IMediator mediator)
        {
            _mediator = mediator;
        }


        [HttpPost("create")]
        public async Task<IActionResult> CreateRecipe([FromBody] CreateRecipeCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpPut("update")]
        public async Task<IActionResult> UpdateRecipe([FromBody] UpdateRecipeCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpDelete("delete")]
        public async Task<IActionResult> DeleteRecipe([FromBody] DeleteRecipeCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpGet("get")]
        public async Task<IActionResult> Get([FromQuery] GetRecipesQuery query)
        {
            var response = await _mediator.Send(query);
            return CreateActionResultInstance(response);
        }
        
        [HttpGet("getMyRecipes")]
        public async Task<IActionResult> GetMyRecipes([FromQuery] GetMyRecipesQuery query)
        {
            var response = await _mediator.Send(query);
            return CreateActionResultInstance(response);
        }


    }
}