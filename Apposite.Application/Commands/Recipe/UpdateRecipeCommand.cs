using Apposite.Core.Dtos;
using Apposite.Domain.Entities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Commands.Recipe
{
    public class UpdateRecipeCommand : IRequest<Response<NoContent>>
    {
        public Guid Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public double PreparationTime { get; set; }
        public double Calories { get; set; }
    }
}
