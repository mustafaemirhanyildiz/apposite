using Apposite.Domain.Enums;
using Apposite.Persistence;
using Microsoft.AspNetCore.Http;

namespace Apposite.Application.Services.MediaFile
{
    public interface IMediaFileService
    {
        /// <summary>
        /// Dosyayı blobstorage'a yükler ve DB'ye kayıt eder.
        /// </summary>
        /// <param name="file"></param>
        /// <param name="mediaName"></param>
        /// <param name="fileType"></param>
        /// <returns></returns>
        public Task< Apposite.Domain.Entities.MediaFile> UploadMediaFile(IFormFile file, string mediaName, FileTypes fileType, AppositeDbContext dbContext);

    }

}