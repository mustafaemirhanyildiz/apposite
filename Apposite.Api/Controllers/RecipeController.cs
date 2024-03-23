
using Apposite.Application.Commands.Ai;
using Apposite.Core.ControllerBases;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Api.Controllers
{
    [ApiController]
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


    }
}