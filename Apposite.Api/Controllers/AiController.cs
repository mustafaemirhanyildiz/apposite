using Apposite.Application.Commands.Ai;
using Apposite.Application.Commands.Auth;
using Apposite.Application.Dto.Ai;
using Apposite.Application.Dto.Auth;
using Apposite.Application.Queries.Ai;
using Apposite.Core.ControllerBases;
using FluentValidation;
using FluentValidation.Results;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Api.Controllers
{
    [ApiController]
    [Authorize]
    [Route("api/[controller]")]
    public class AiController : CustomControllerBase
    {
        private readonly IMediator _mediator;
        private readonly IValidator<CreateRecipeCommand> _createRecipeCommandValidator;


        public AiController(IMediator mediator, IValidator<CreateRecipeCommand> createRecipeCommandValidator)
        {
            _mediator = mediator;
            _createRecipeCommandValidator = createRecipeCommandValidator;
        }

        [HttpGet("getRecipes")]
        public async Task<IActionResult> GetRecipes([FromQuery] GetRecipesQuery query)
        {
            var response = await _mediator.Send(query);
            return CreateActionResultInstance(response);
        }

        [HttpGet("getPublicRecipes")]
        public async Task<IActionResult> GetPublicRecipes([FromQuery] GetPublicRecipesQuery query)
        {
            var response = await _mediator.Send(query);
            return CreateActionResultInstance(response);
        }

        [HttpPut("publishRecipe")]
        public async Task<IActionResult> PublishRecipe([FromBody] PublishRecipeCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }


        [HttpPost("createRecipe")]
        public async Task<IActionResult> CreateRecipe([FromBody] CreateRecipeCommand command)
        {
            ValidationResult result = await _createRecipeCommandValidator.ValidateAsync(command);

            if (!result.IsValid)
            {
                return CreateActionResultInstance<CreateRecipeDto>(result);
            }
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

    }
}
