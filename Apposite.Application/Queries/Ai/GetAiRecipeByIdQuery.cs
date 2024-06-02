using Apposite.Application.Dto.Ai;
using Apposite.Core.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Queries.Ai
{
    public class GetAiRecipeByIdQuery : IRequest<Response<GetAiRecipeDto>>
    {
        public Guid Id { get; set; }

    }
}
