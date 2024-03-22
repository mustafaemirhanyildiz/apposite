using Apposite.Core.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Commands.Ai
{
    public class PublishAiRecipeCommand : IRequest<Response<NoContent>>
    {
        public Guid RecipeId { get; set; }
    }
}
