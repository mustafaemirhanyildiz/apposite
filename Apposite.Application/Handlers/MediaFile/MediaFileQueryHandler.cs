using Apposite.Application.Dto.MediaFile;
using Apposite.Application.Mapping;
using Apposite.Application.Queries.MediaFile;
using Apposite.Core.Dtos;
using Apposite.Persistence;
using MediatR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace Apposite.Application.Handlers.MediaFile
{
    public class MediaFileQueryHandler : IRequestHandler<GetAllMediaFilesQuery, Response<List<GetAllMediaFileDto>>>
    {
        private readonly AppositeDbContext _dbContext;
        private readonly ILogger<MediaFileQueryHandler> _logger;

        public MediaFileQueryHandler(AppositeDbContext dbContext, ILogger<MediaFileQueryHandler> logger)
        {
            _dbContext = dbContext;
            _logger = logger;
        }
        public async Task<Response<List<GetAllMediaFileDto>>> Handle(GetAllMediaFilesQuery request, CancellationToken cancellationToken)
        {
            var mediaFiles = await _dbContext.MediaFiles.Where(x => x.FileType == request.FileType).ToListAsync(cancellationToken);
            var mediaFilesDto = ObjectMapper.Mapper.Map<List<GetAllMediaFileDto>>(mediaFiles);
            return Response<List<GetAllMediaFileDto>>.Success(200, mediaFilesDto);
        }
    }
}