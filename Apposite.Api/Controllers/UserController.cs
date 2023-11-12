using MediatR;
using Apposite.Application.Commands.User;
using Apposite.Application.Dto.User;
using Apposite.Core.ControllerBases;
using Apposite.Domain.Enums;
using FluentValidation;
using FluentValidation.Results;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class UserController : CustomControllerBase
    {
        private readonly IMediator _mediator;
        private readonly IValidator<CreateUserCommand> _createUserCommand;

        public UserController(IMediator mediator, IValidator<CreateUserCommand> createUserCommand)
        {
            _mediator = mediator;
            _createUserCommand = createUserCommand;
        }

        [HttpPost("create")]
        // [Authorize(Roles = nameof(RoleList.Admin))]
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