using Apposite.Application.Dto.MediaFile;
using Apposite.Core.Dtos;
using Apposite.Domain.Enums;
using MediatR;

namespace Apposite.Application.Queries.MediaFile
{
    public class GetAllMediaFilesQuery : IRequest<Response<List<GetAllMediaFileDto>>>
    {
        public FileTypes FileType { get; set; }
    }
}