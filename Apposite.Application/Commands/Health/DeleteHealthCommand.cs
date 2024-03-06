using Apposite.Core.Dtos;
using MediatR;

namespace Apposite.Application.Commands.Health
{
    public class DeleteHealthCommand : IRequest<Response<NoContent>>
    {
        public Guid Id { get; set;}
    }
}