using Apposite.Application.ServiceExtensions;
using Apposite.Application.Settings;
using Azure;
using Azure.Storage.Blobs;
using Azure.Storage.Blobs.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

namespace Apposite.Application.Services
{
    public class BlobStorageService
    {
        private readonly BlobContainerClient _blobContainerClient;
        private AzureBlobSettings _azureBlobSettings;
        private readonly ILogger<BlobStorageService> _logger;

        public BlobStorageService(IOptions<AzureBlobSettings> azureBlobSettings, ILogger<BlobStorageService> logger)
        {
            _azureBlobSettings = azureBlobSettings.Value;
            _blobContainerClient = new BlobContainerClient(_azureBlobSettings.Uri, _azureBlobSettings.AppositeContainer);
            _logger = logger;
        }
        public async Task<Stream> DownloadAsync(string fileName, string containerName)
        {
            BlobClient blobClient = _blobContainerClient.GetBlobClient($"{containerName}/{fileName}");
            Response<BlobDownloadInfo> response = await blobClient.DownloadAsync();
            //response.Value -> Tüm bilgileri getirecektir.
            return response.Value.Content;
        }
        public async Task RenameAsync(string newFileName, string fileName, string containerName)
        {
            BlobClient blobClient = _blobContainerClient.GetBlobClient($"{containerName}/{fileName}");
            await blobClient.StartCopyFromUriAsync(new Uri(_blobContainerClient.Uri.AbsoluteUri + $"{containerName}/{newFileName}"));
            await blobClient.DeleteIfExistsAsync();
            return;
        }
        public async Task<bool> ExistAsync(string fileName, string containerName)
        {
            BlobClient blobClient = _blobContainerClient.GetBlobClient($"{containerName}/{fileName}");

            return await blobClient.ExistsAsync();
        }
        public async Task<bool> UploadAsnyc(Stream fileStream, string fileName, string containerName)
        {
            _logger.SendInformation($"BlobStorageService UploadAsnyc just started. Request: {fileName} / {containerName}", "BlobStorageService/UploadAsnyc");

            try
            {
                BlobClient blobClient = _blobContainerClient.GetBlobClient($"{containerName}/{fileName}");
                await blobClient.UploadAsync(fileStream, overwrite: true);
                return true;
            }
            catch (Exception ex)
            {
                _logger.SendError(ex, "BlobStorageService/UploadAsnyc");
                return false;
            }
        }

        public async Task DeleteAsync(string fileName, string containerName)
        {
            _logger.SendInformation($"BlobStorageService UploadAsnyc just started. Request: {fileName} / {containerName}", "BlobStorageService/DeleteAsync");
            try
            {
                BlobClient blobClient = _blobContainerClient.GetBlobClient($"{containerName}/{fileName}");
                await blobClient.DeleteAsync();
            }
            catch (Exception ex)
            {
                _logger.SendError(ex, "BlobStorageService/DeleteAsync");
            }
        }

        public async Task<string> UploadAsyncFull(IFormFile file, string containerName)
        {
            var fileNameRaw = file.FileName.Split('.');
            string fileName = Guid.NewGuid().ToString() + "." + fileNameRaw.LastOrDefault();

            using (var ms = new MemoryStream())
            {
                await file.CopyToAsync(ms);
                ms.Seek(0, SeekOrigin.Begin);
                await UploadAsnyc(ms, fileName, containerName);
            }

            return fileName;
        }
        public async Task<long> GetSize(string fileName, string containerName)
        {
            _logger.SendInformation($"BlobStorageService UploadAsnyc just started. Request: {fileName} / {containerName}", "BlobStorageService/GetSize");

            try
            {
                BlobClient blobClient = _blobContainerClient.GetBlobClient($"{containerName}/{fileName}");
                var properties = await blobClient.GetPropertiesAsync();
                var size = properties.Value.ContentLength;
                return size;
            }
            catch (Exception ex)
            {
                _logger.SendError(ex, "BlobStorageService/GetSize");
                return -1;
            }

        }

        public string GetBlobUrl(string fileName, string containerName)
        {
            // Blob URL'sini oluşturun
            BlobClient blobClient = _blobContainerClient.GetBlobClient($"{containerName}/{fileName}");

            // Blob var mı kontrol edin
            if (!blobClient.Exists())
            {
                // Blob bulunamazsa null döndürün
                return null;
            }

            string blobUrl = blobClient.Uri.AbsoluteUri;

            // Sorgu dizesini kaldırın (göstermek istediğiniz resmi indirmeyin)
            Uri uri = new Uri(blobUrl);
            string blobBaseUrl = uri.GetLeftPart(UriPartial.Path);

            return blobBaseUrl;
        }
    }
}