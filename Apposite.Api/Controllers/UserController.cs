using Apposite.Application.Commands.Ingredient;
using Apposite.Application.Commands.User;
using Apposite.Application.Queries.User;
using Apposite.Core.ControllerBases;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : CustomControllerBase
    {
        private readonly IMediator _mediator;

        public UserController(IMediator mediator)
        {
            _mediator = mediator;
        }


        [HttpPost("addPersonalInfo")]
        public async Task<IActionResult> Create([FromBody] CreatePersonalInfoCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpGet("getPersonalInfo")]
        public async Task<IActionResult> GetPersonalInfo([FromQuery] GetUserInfoQuery query)
        {
            var response = await _mediator.Send(query);
            return CreateActionResultInstance(response);
        }

    }
}
