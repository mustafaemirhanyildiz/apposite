using Apposite.Core.Dtos;
using MediatR;

namespace Apposite.Application.Commands.Health
{
    public class SyncHealthCommand : IRequest<Response<NoContent>>
    {
        
    }
}