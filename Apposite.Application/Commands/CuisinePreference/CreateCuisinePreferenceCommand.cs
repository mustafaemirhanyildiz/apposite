using Apposite.Core.Dtos;
using MediatR;

namespace Apposite.Application.Commands.CuisinePreference
{
    public class CreateCuisinePreferenceCommand : IRequest<Response<NoContent>>
    {
        public string Name { get; set; }
        public string? Description { get; set; }
    }
}
