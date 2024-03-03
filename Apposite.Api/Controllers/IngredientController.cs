using Apposite.Application.Commands.Ingredient;
using Apposite.Core.ControllerBases;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Api.Controllers
{
    [ApiController]
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
    }
}