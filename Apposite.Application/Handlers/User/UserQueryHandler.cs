using Apposite.Application.Dto.CuisinePreference;
using Apposite.Application.Dto.Health;
using Apposite.Application.Dto.Ingredient;
using Apposite.Application.Dto.User;
using Apposite.Application.Mapping;
using Apposite.Application.Queries.User;
using Apposite.Application.Services.TokenService;
using Apposite.Core.Dtos;
using Apposite.Persistence;
using MediatR;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Apposite.Application.Handlers.User
{
    public class UserQueryHandler : IRequestHandler<GetUserInfoQuery, Response<GetUserInfoDto>>
    {

        private readonly AppositeDbContext _dbContext;
        private readonly UserManager<Apposite.Domain.Entities.User> _userManager;
        private readonly ITokenService _tokenService;


        public UserQueryHandler(AppositeDbContext dbContext, UserManager<Apposite.Domain.Entities.User> userManager, ITokenService tokenService)
        {
            _dbContext = dbContext;
            _userManager = userManager;
            _tokenService = tokenService;
        }

        public async Task<Response<GetUserInfoDto>> Handle(GetUserInfoQuery request, CancellationToken cancellationToken)
        {
            var userId = _tokenService.GetUserId();
            var user = _dbContext.Users.Where(x => x.Id == userId).FirstOrDefault();
            if (user == null)
                Response<GetUserInfoDto>.Fail(400,"User not found");
            var userCuisinePreferences = _dbContext.UserCuisinePreferences.Where(x => x.UserId == userId).Include(x => x.CuisinePreference).ToList();
            var cuisines = _dbContext.CuisinePreferences.Where(x => userCuisinePreferences.Select(x => x.CuisinePreferenceId).Contains(x.Id)).ToList();
            var userIngredients = _dbContext.UserIngredients.Where(x => x.UserId == userId).Include(x => x.Ingredient).ToList();
            var ingredients = _dbContext.Ingredients.Where(x => userIngredients.Select(x => x.IngredientId).Contains(x.Id)).ToList();
            var userHealths = _dbContext.UserHealths.Where(x => x.UserId == userId).Include(x => x.Health).ToList();
            var healths = _dbContext.Healths.Where(x => userHealths.Select(x => x.HealthId).Contains(x.Id)).ToList();
            var getUserInfoDto = new GetUserInfoDto
            {
                Cuisines = ObjectMapper.Mapper.Map<List<CuisinePreferenceDto>>(cuisines),
                Ingredients = ObjectMapper.Mapper.Map<List<IngredientDto>>(ingredients),
                Healths = ObjectMapper.Mapper.Map<List<HealthDto>>(healths),
            };
            return Response<GetUserInfoDto>.Success(200,getUserInfoDto);

        }
    }
}
