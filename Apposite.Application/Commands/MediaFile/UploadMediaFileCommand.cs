using Apposite.Application.Dto.MediaFile;
using Apposite.Core.Dtos;
using Apposite.Domain.Enums;
using MediatR;
using Microsoft.AspNetCore.Http;

namespace Apposite.Application.Commands.MediaFile
{
      public class UploadMediaFileCommand : IRequest<Response<MediaFileDto>>
    {
        public IFormFile File { get; set; }
        public string? MediaName { get; set; }
        public FileTypes FileType { get; set; }
    }
}