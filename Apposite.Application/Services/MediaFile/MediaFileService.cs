
using Apposite.Application.Settings;
using Apposite.Domain.Enums;
using Apposite.Persistence;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Options;

namespace Apposite.Application.Services.MediaFile
{
    public class MediaFileService : IMediaFileService
    {
        private readonly AzureBlobSettings _azureBlobSettings;
        private readonly BlobStorageService _blobStorageService;

        public MediaFileService(IOptions<AzureBlobSettings> azureBlobSettings, BlobStorageService blobStorageService)
        {
            _azureBlobSettings = azureBlobSettings.Value;
            _blobStorageService = blobStorageService;
        }

        public async Task<Apposite.Domain.Entities.MediaFile> UploadMediaFile(IFormFile file, string mediaName, FileTypes fileType, AppositeDbContext _dbContext)
        {
            var blobUrl = await _blobStorageService.UploadAsyncFull(file, _azureBlobSettings.AppositeContainer);

            var mediaFile = new  Apposite.Domain.Entities.MediaFile()
            {
                FileName = blobUrl,
                MediaName = mediaName ?? file.FileName,
                FileType = fileType,
            };

            await _dbContext.MediaFiles.AddAsync(mediaFile);
            await _dbContext.SaveChangesAsync();

            return mediaFile;
        }

    }
}