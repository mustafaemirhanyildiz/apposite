using MediatR;
using Apposite.Application.Commands.User;
using Apposite.Application.Dto.User;
using Apposite.Application.Mapping;
using Apposite.Core.Dtos;
using Apposite.Domain.Entities;
using Apposite.Persistence;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Logging;

namespace Apposite.Application.Handlers.User
{
    public class UserCommandsHandler : IRequestHandler<CreateUserCommand, Response<UserDto>>
    {

        private readonly AppositeDbContext _dbContext;

        private readonly UserManager<Users> _userManager;

        private readonly ILogger<UserCommandsHandler> _logger;

        public UserCommandsHandler(AppositeDbContext dbContext, UserManager<Users> userManager, ILogger<UserCommandsHandler> logger)
        {
            _dbContext = dbContext;
            _userManager = userManager;
            _logger = logger;
        }

        public async Task<Response<UserDto>> Handle(CreateUserCommand request, CancellationToken cancellationToken)
        {
            var transection = await _dbContext.Database.BeginTransactionAsync();
            IdentityResult idResult = null;
            try
            {
                Users user = ObjectMapper.Mapper.Map<Users>(request);
                var userExist = await _userManager.FindByEmailAsync(request.Email);
                if(userExist != null && userExist.IsDeleted)
                {
                    userExist.Name = request.Name;
                    userExist.Surname = request.Surname;
                    userExist.IsDeleted = false;
                    userExist.Email = request.Email;
                    userExist.PhoneNumber = request.PhoneNumber;

                    if(!string.IsNullOrEmpty(request.Password))
                    {
                        var token = await _userManager.GeneratePasswordResetTokenAsync(userExist);
                        var result = await _userManager.ResetPasswordAsync(userExist, token, request.Password);
                    }
                    
                    var currentRoles = await _userManager.GetRolesAsync(userExist);
                    if(!currentRoles.Any(a=>a.ToLower().Equals(request.Role.ToString().ToLower())))
                    {
                        await _userManager.RemoveFromRolesAsync(userExist, currentRoles);
                        await _userManager.AddToRoleAsync(userExist, request.Role.ToString());
                    }

                    await _userManager.UpdateAsync(userExist);

                    await _dbContext.SaveChangesAsync();
                    await transection.CommitAsync();

                    var userDto = ObjectMapper.Mapper.Map<UserDto>(userExist);
                    userDto.Role = request.Role.ToString();
                    return Response<UserDto>.Success(userDto, 200);  
                }

                idResult = await _userManager.CreateAsync(user, request.Password);

                if(idResult.Succeeded)
                {
                    var roleAssigned = await _userManager.AddToRoleAsync(user, request.Role.ToString());

                    var createdUser = ObjectMapper.Mapper.Map<UserDto>(user);

                    if(roleAssigned.Succeeded)
                        createdUser.Role = request.Role.ToString();
                    
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