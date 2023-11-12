using MediatR;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Logging;
using Apposite.Application.Commands.Login;
using Apposite.Application.Dto.Login;
using Apposite.Application.ServiceExtensions;
using Apposite.Application.Services;
using Apposite.Core.Dtos;
using Apposite.Domain.Entities;
using Apposite.Persistence;


namespace Apposite.Application.Handlers
{
    public class AuthCommandHandler : IRequestHandler<LoginCommand, Response<LoginDto>>
    {
        private readonly JwtGenerator _jwtGenerator;
        private readonly SignInManager<Users> _signInManager;
        private readonly AppositeDbContext _dbContext;
        private readonly ILogger<AuthCommandHandler> _logger;
        private readonly UserManager<Users> _userManager;
        private readonly RedisService _redisService;

        public AuthCommandHandler(UserManager<Users> userManager, ILogger<AuthCommandHandler> logger, AppositeDbContext dbContext, SignInManager<Users> signInManager, JwtGenerator jwtGenerator, RedisService redisService)
        {
            _userManager = userManager;
            _logger = logger;
            _dbContext = dbContext;
            _signInManager = signInManager;
            _jwtGenerator = jwtGenerator;
            _redisService = redisService;
        }


        public async Task<Response<LoginDto>> Handle(LoginCommand request, CancellationToken cancellationToken)
        {
            try
            {

                var user = await _userManager.FindByEmailAsync(request.Email);
                if (user == null)
                {
                    return Response<LoginDto>.Fail("Girdiğiniz mail vevya şifre hatalı. Lütfen kontrol ediniz", 404);

                }
                var signInResult = await _signInManager.CheckPasswordSignInAsync(user, request.Password, false);
                var userClaims = await _userManager.GetClaimsAsync(user);
                if (signInResult.Succeeded)
                {
                    var token = await _jwtGenerator.GenerateJwt(user);
                    var refreshToken = await _jwtGenerator.GenerateRefreshToken(user);
                    return Response<LoginDto>.Success(new LoginDto { Token = token, RefreshToken = refreshToken }, 200);

                }

                return Response<LoginDto>.Fail("Girilen şifre hatalı. Lütfen şifrenizi kontrol ediniz.", 404);
            }
            catch (Exception ex)
            {
                _logger.SendError(ex, nameof(LoginCommand));
                return Response<LoginDto>.Fail("Bilinmedik bir hata oluştu.", 500);
            }
        }
    }
}
