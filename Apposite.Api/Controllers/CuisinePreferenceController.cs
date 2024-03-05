﻿using Apposite.Application.Commands.CuisinePreference;
using Apposite.Application.Commands.Ingredient;
using Apposite.Application.Queries.CuisinePreference;
using Apposite.Application.Queries.Ingredient;
using Apposite.Core.ControllerBases;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CuisinePreferenceController : CustomControllerBase
    {
        private readonly IMediator _mediator;

        public CuisinePreferenceController(IMediator mediator)
        {
            _mediator = mediator;
        }


        [HttpPost("create")]
        public async Task<IActionResult> Create([FromBody] CreateCuisinePreferenceCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpPost("createBulk")]
        public async Task<IActionResult> CreateBulk([FromBody] CreateCuisinePreferenceBulkCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpPut("update")]
        public async Task<IActionResult> Update([FromBody] UpdateCuisinePreferenceCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpDelete("delete")]
        public async Task<IActionResult> Delete([FromBody] DeleteCuisinePreferenceCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        [HttpGet("get")]
        public async Task<IActionResult> Get([FromQuery] GetCuisinePreferencesQuery query)
        {
            var response = await _mediator.Send(query);
            return CreateActionResultInstance(response);
        }
    }
}