using Apposite.Application.Commands.Health;
using Apposite.Application.Commands.Ingredient;
using Apposite.Application.Queries.Health;
using Apposite.Core.ControllerBases;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Api.Controllers
{
    [Route("api/[controller]")]
    [Authorize]
    [ApiController]
    public class HealthController : CustomControllerBase
    {
        private readonly IMediator _mediator;

        public HealthController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpPost("create")]
        public async Task<IActionResult> Create([FromBody] CreateHealthCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpPost("createBulk")]
        public async Task<IActionResult> CreateBulk([FromBody] CreateHealthBulkCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpPut("update")]
        public async Task<IActionResult> Update([FromBody] UpdateHealthCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpDelete("delete")]
        public async Task<IActionResult> Delete([FromBody] DeleteHealthCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpGet("get")]
        public async Task<IActionResult> Get([FromQuery] GetHealthQuery query)
        {
            var response = await _mediator.Send(query);
            return CreateActionResultInstance(response);
        }

        [HttpPost("sync")]
        public async Task<IActionResult> Sync()
        {
            var response = await _mediator.Send(new SyncHealthCommand());
            return CreateActionResultInstance(response);
        }
    }
}
