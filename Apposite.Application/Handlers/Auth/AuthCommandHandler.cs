using MediatR;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Logging;
using Apposite.Application.Commands.Auth;
using Apposite.Application.Dto.Auth;
using Apposite.Application.ServiceExtensions;
using Apposite.Application.Services;
using Apposite.Core.Dtos;
using Apposite.Domain.Entities;
using Apposite.Persistence;
using Apposite.Application.Mapping;


namespace Apposite.Application.Handlers
{
    public class AuthCommandHandler : IRequestHandler<LoginCommand, Response<LoginDto>>,
                                      IRequestHandler<CreateUserCommand, Response<UserDto>>

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

        public async Task<Response<UserDto>> Handle(CreateUserCommand request, CancellationToken cancellationToken)
        {
            var transection = await _dbContext.Database.BeginTransactionAsync();
            IdentityResult idResult = null;
            try
            {
                Users user = ObjectMapper.Mapper.Map<Users>(request);
                var userExist = await _userManager.FindByEmailAsync(request.Email);
                if (userExist != null && userExist.IsDeleted)
                {
                    userExist.Name = request.Name;
                    userExist.Surname = request.Surname;
                    userExist.IsDeleted = false;
                    userExist.Email = request.Email;

                    if (!string.IsNullOrEmpty(request.Password))
                    {
                        var token = await _userManager.GeneratePasswordResetTokenAsync(userExist);
                        var result = await _userManager.ResetPasswordAsync(userExist, token, request.Password);
                    }

                    await _userManager.UpdateAsync(userExist);

                    await _dbContext.SaveChangesAsync();
                    await transection.CommitAsync();

                    var userDto = ObjectMapper.Mapper.Map<UserDto>(userExist);
                    return Response<UserDto>.Success(userDto, 200);
                }

                idResult = await _userManager.CreateAsync(user, request.Password);

                if (idResult.Succeeded)
                {
                    var createdUser = ObjectMapper.Mapper.Map<UserDto>(user);
                    await _dbContext.SaveChangesAsync();
                    await transection.CommitAsync();
                    return Response<UserDto>.Success(createdUser, 200);
                }
                else
                {
                    await transection.RollbackAsync();
                    _logger.LogError("Error occured while creating user");
                    return Response<UserDto>.Fail("Error occured while creating user", 500);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error occured while creating user");
                return Response<UserDto>.Fail("Error occured while creating user", 500);
            }
        }
    }
}
