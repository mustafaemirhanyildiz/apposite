using Apposite.Core.Dtos;
using MediatR;

namespace Apposite.Application.Commands.Health
{
    public class UpdateHealthCommand : IRequest<Response<NoContent>>
    {
        public Guid Id { get; set; }
        public string? Name { get; set; }
        public string? Description { get; set; }
    }
}
