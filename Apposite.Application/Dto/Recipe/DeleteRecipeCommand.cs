using Apposite.Core.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Dto.Recipe
{
    public class DeleteRecipeCommand : IRequest<Response<NoContent>>
    {
        public Guid Id { get; set; }
    }
}
