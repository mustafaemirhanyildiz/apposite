using MediatR;
using Apposite.Application.Commands.Auth;
using Apposite.Core.ControllerBases;
using Microsoft.AspNetCore.Mvc;
using FluentValidation;
using FluentValidation.Results;
using Apposite.Application.Dto.Auth;
using Apposite.Core.Dtos;

namespace Apposite.Api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuthController : CustomControllerBase
    {
        private readonly IMediator _mediator;
        private readonly IValidator<CreateUserCommand> _createUserCommand;
        private readonly IValidator<ForgotPasswordCommand> _forgotPasswordCommand;
        private readonly IValidator<UpdateForgottenPasswordCommand> _updateForgottenPasswordCommand;

        public AuthController(IMediator mediator, IValidator<CreateUserCommand> createUserCommand, IValidator<ForgotPasswordCommand> forgotPasswordCommand, IValidator<UpdateForgottenPasswordCommand> updateForgottenPasswordCommand)
        {
            _mediator = mediator;
            _createUserCommand = createUserCommand;
            _forgotPasswordCommand = forgotPasswordCommand;
            _updateForgottenPasswordCommand = updateForgottenPasswordCommand;
        }

        /// <summary>
        /// Login
        /// </summary>
        ///<remarks>
        ///Example Request:
        ///
        ///     Admin
        ///     {
        ///         "email":"admin@admin.com",
        ///         "password":"P@ssw0rd"
        ///     }
        ///  
        ///     
        /// </remarks>
        /// <returns>
        /// </returns>
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

        [HttpPut("forgotPassword")]
        public async Task<IActionResult> ForgotPassword([FromBody] ForgotPasswordCommand command)
        {
            ValidationResult result = await _forgotPasswordCommand.ValidateAsync(command);

            if (!result.IsValid)
            {
                return CreateActionResultInstance<NoContent>(result);
            }
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }
        
        
        [HttpPut("updateForgottenPassword")]
        public async Task<IActionResult> UpdateForgottenPassword([FromBody] UpdateForgottenPasswordCommand command)
        {
            ValidationResult result = await _updateForgottenPasswordCommand.ValidateAsync(command);

            if (!result.IsValid)
            {
                return CreateActionResultInstance<NoContent>(result);
            }
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }


        [HttpPut("confirmEmail")]
        public async Task<IActionResult> ConfirmEmail([FromBody] ConfirmEmailCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

    }
}