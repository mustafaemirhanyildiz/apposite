using Apposite.Application.Commands.MediaFile;
using Apposite.Application.Queries.MediaFile;
using Apposite.Core.ControllerBases;
using Apposite.Domain.Enums;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Apposite.Api.Controllers
{
    [ApiController]
    [Authorize]
    [Route("api/[controller]")]
    public class MediaFileController : CustomControllerBase
    {
        private readonly IMediator _mediator;

        public MediaFileController(IMediator mediator)
        {
            _mediator = mediator;
        }

        /// <summary>
        /// Medya görseli yükler
        /// </summary>
        ///<remarks>
        /// </remarks>
        /// <returns>
        /// </returns>
        [HttpPost("upload")]
        public async Task<IActionResult> UploadFile([FromForm] UploadMediaFileCommand command)
        {
            var response = await _mediator.Send(command);
            return CreateActionResultInstance(response);
        }

        /// <summary>
        /// Tüme medya görsellerini getirir 
        /// </summary>
        ///<remarks>
        /// </remarks>
        /// <returns>
        /// </returns>
        [HttpGet("getall/{fileType}")]
        public async Task<IActionResult> GetAll(FileTypes fileType)
        {
            var response = await _mediator.Send(new GetAllMediaFilesQuery() { FileType = fileType });
            return CreateActionResultInstance(response);
        }
    }
}