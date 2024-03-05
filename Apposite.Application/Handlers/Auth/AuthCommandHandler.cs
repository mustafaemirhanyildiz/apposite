﻿using MediatR;
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
using StackExchange.Redis;
using Apposite.Domain.Enums;


namespace Apposite.Application.Handlers
{
    public class AuthCommandHandler : IRequestHandler<LoginCommand, Response<LoginDto>>,
                                      IRequestHandler<CreateUserCommand, Response<UserDto>>

    {
        private readonly JwtGenerator _jwtGenerator;
        private readonly SignInManager<User> _signInManager;
        private readonly AppositeDbContext _dbContext;
        private readonly ILogger<AuthCommandHandler> _logger;
        private readonly UserManager<User> _userManager;
        private readonly RedisService _redisService;

        public AuthCommandHandler(UserManager<User> userManager, ILogger<AuthCommandHandler> logger, AppositeDbContext dbContext, SignInManager<User> signInManager, JwtGenerator jwtGenerator, RedisService redisService)
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
                var user = await _userManager.FindByEmailAsync(request.Email);
                if (user == null)
                {
                    return Response<LoginDto>.Fail(404, "Girdiğiniz mail veya şifre hatalı. Lütfen kontrol ediniz");

                }
                var signInResult = await _signInManager.CheckPasswordSignInAsync(user, request.Password, false);
                var userClaims = await _userManager.GetClaimsAsync(user);
                if (signInResult.Succeeded)
                {
                    var token = await _jwtGenerator.GenerateJwt(user);
                    var refreshToken = await _jwtGenerator.GenerateRefreshToken(user);
                    return Response<LoginDto>.Success(200, new LoginDto { Token = token, RefreshToken = refreshToken });

                }
                return Response<LoginDto>.Fail(404, "Girilen şifre hatalı. Lütfen şifrenizi kontrol ediniz.");
        }

        public async Task<Response<UserDto>> Handle(CreateUserCommand request, CancellationToken cancellationToken)
        {
            var transection = await _dbContext.Database.BeginTransactionAsync();
            IdentityResult idResult = null;
                User user = ObjectMapper.Mapper.Map<User>(request);

                if (_userManager.PasswordValidators.Any() && request.Password != null)
                {
                    foreach (var validator in _userManager.PasswordValidators)
                    {
                        var result = await validator.ValidateAsync(_userManager, user, request.Password);
                        if (!result.Succeeded)
                        {
                            await transection.RollbackAsync();
                            return Response<UserDto>.Fail(400, result.Errors.Select(x => x.Description).ToList());
                        }
                    }
                }
                
                idResult = await _userManager.CreateAsync(user, request.Password);

                if (idResult.Succeeded)
                {
                    var roleAssigned = await _userManager.AddToRoleAsync(user, RoleList.User.ToString());
                    if (!roleAssigned.Succeeded)
                    {
                        await transection.RollbackAsync();
                        _logger.LogError("Error occured while creating user");
                        return Response<UserDto>.Fail(500, "Error occured while creating user");
                    }
                    var createdUser = ObjectMapper.Mapper.Map<UserDto>(user);
                    createdUser.Role = RoleList.User.ToString();
                    await _dbContext.SaveChangesAsync();
                    await transection.CommitAsync();
                    return Response<UserDto>.Success(200, createdUser);
                }
                else
                {
                    await transection.RollbackAsync();
                    _logger.LogError("Error occured while creating user");
                    return Response<UserDto>.Fail(500, "Error occured while creating user");
                }
        }
    }
}
