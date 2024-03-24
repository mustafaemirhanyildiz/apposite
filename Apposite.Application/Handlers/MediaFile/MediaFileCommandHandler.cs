using Apposite.Application.Commands.MediaFile;
using Apposite.Application.Dto.MediaFile;
using Apposite.Application.Services.MediaFile;
using Apposite.Core.Dtos;
using Apposite.Persistence;
using MediatR;
using Microsoft.Extensions.Logging;

namespace Apposite.Application.Handlers.MediaFile
{
    public class MediaFileCommandHandler : IRequestHandler<UploadMediaFileCommand, Response<MediaFileDto>>
    {
        private readonly ILogger<MediaFileCommandHandler> _logger;
        private readonly IMediaFileService _mediaFileService;
        private readonly AppositeDbContext _dbContext;

        public MediaFileCommandHandler(ILogger<MediaFileCommandHandler> logger, IMediaFileService mediaFileService, AppositeDbContext dbContext)
        {
            _logger = logger;
            _mediaFileService = mediaFileService;
            _dbContext = dbContext;
        }


        public async Task<Response<MediaFileDto>> Handle(UploadMediaFileCommand request, CancellationToken cancellationToken)
        {
            var mediaFile = await _mediaFileService.UploadMediaFile(request.File, request.MediaName, request.FileType, _dbContext);
            var mediaFileDto = new MediaFileDto
            {
                Id = mediaFile.Id
            };
            return Response<MediaFileDto>.Success(200, mediaFileDto);
        }
    }
}