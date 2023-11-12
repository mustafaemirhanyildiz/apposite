using MediatR;
using Apposite.Application.Commands.Login;
using Apposite.Core.ControllerBases;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuthController: CustomControllerBase
    {
        private readonly IMediator _mediator;

        public AuthController(IMediator mediator)
        {
            _mediator = mediator;
        }


        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] LoginCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }
        
    }
}