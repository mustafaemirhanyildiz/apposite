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
        private readonly IValidator<CreateAiRecipeCommand> _createRecipeCommandValidator;


        public AiController(IMediator mediator, IValidator<CreateAiRecipeCommand> createRecipeCommandValidator)
        {
            _mediator = mediator;
            _createRecipeCommandValidator = createRecipeCommandValidator;
        }

        [HttpGet("getAiRecipes")]
        public async Task<IActionResult> GetAiRecipes([FromQuery] GetAiRecipesQuery query)
        {
            var response = await _mediator.Send(query);
            return CreateActionResultInstance(response);
        }

        [HttpGet("getAiRecipeById/{id}")]
        public async Task<IActionResult> GetAiRecipes([FromRoute] Guid id)
        {
            var response = await _mediator.Send(new GetAiRecipeByIdQuery() { Id = id });
            return CreateActionResultInstance(response);
        }

        [HttpGet("getPublicAiRecipes")]
        public async Task<IActionResult> GetPublicAiRecipes([FromQuery] GetPublicAiRecipesQuery query)
        {
            var response = await _mediator.Send(query);
            return CreateActionResultInstance(response);
        }

        [HttpPut("publishAiRecipe")]
        public async Task<IActionResult> PublishAiRecipe([FromBody] PublishAiRecipeCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }


        [HttpPost("createAiRecipe")]
        public async Task<IActionResult> CreateAiRecipe([FromBody] CreateAiRecipeCommand command)
        {
            ValidationResult result = await _createRecipeCommandValidator.ValidateAsync(command);

            if (!result.IsValid)
            {
                return CreateActionResultInstance<CreateAiRecipeDto>(result);
            }
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

    }
}
