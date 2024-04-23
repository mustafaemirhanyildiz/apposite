using Apposite.Application.Commands.Ingredient;
using Apposite.Application.Queries.Ingredient;
using Apposite.Core.ControllerBases;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Api.Controllers
{
    [ApiController]
    [Authorize]
    [Route("api/[controller]")]
    public class IngredientController : CustomControllerBase    
    {
        private readonly IMediator _mediator;

        public IngredientController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpPost("create")]
        public async Task<IActionResult> Create([FromBody] CreateIngredientCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }        

        [HttpPost("createBulk")]
        public async Task<IActionResult> CreateBulk([FromBody] CreateIngredientBulkCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpPut("update")]
        public async Task<IActionResult> Update([FromBody] UpdateIngredientCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpDelete("delete")]
        public async Task<IActionResult> Delete([FromBody] DeleteIngredientCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpGet("get")]
        public async Task<IActionResult> Get([FromQuery] GetIngredientsQuery query)
        {
            var response = await _mediator.Send(query);
            return CreateActionResultInstance(response);
        }

        [HttpPost("sync")]
        public async Task<IActionResult> Sync()
        {
            var response = await _mediator.Send(new SyncIngredientCommand());
            return CreateActionResultInstance(response);
        }
        
    }
}