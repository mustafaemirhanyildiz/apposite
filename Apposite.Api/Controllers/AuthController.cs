using MediatR;
using Apposite.Application.Commands.Auth;
using Apposite.Core.ControllerBases;
using Microsoft.AspNetCore.Mvc;
using FluentValidation;
using FluentValidation.Results;
using Apposite.Application.Dto.Auth;

namespace Apposite.Api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuthController : CustomControllerBase
    {
        private readonly IMediator _mediator;
        private readonly IValidator<CreateUserCommand> _createUserCommand;

        public AuthController(IMediator mediator, IValidator<CreateUserCommand> createUserCommand)
        {
            _mediator = mediator;
            _createUserCommand = createUserCommand;
        }


        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] LoginCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpPost("register")]
        public async Task<IActionResult> Create([FromBody] CreateUserCommand command)
        {
            ValidationResult result = await _createUserCommand.ValidateAsync(command);

            if (!result.IsValid)
            {
                return CreateActionResultInstance<UserDto>(result);
            }
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

    }
}