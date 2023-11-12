using Apposite.Domain.Entities;
using Apposite.Domain.Enums;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.DependencyInjection;

namespace Apposite.Persistence.Seeds
{
    public class AdminSeed
    {
        public static async Task SeedAdmin(IServiceProvider _serviceProvider)
        {
            using var scope = _serviceProvider.CreateScope();
            var userManager = scope.ServiceProvider.GetRequiredService<UserManager<Users>>();
            var users = await userManager.GetUsersInRoleAsync(nameof(RoleList.Admin));
            if (users.Count == 0)
            {
                Users user = new Users() { Email = "admin@admin.com", Name = "Admin", Surname = "Admin", UserName = "admin@admin.com" };
                await userManager.CreateAsync(user, "P@ssw0rd");
                await userManager.AddToRoleAsync(user, nameof(RoleList.Admin));
            }
        }
        
    }
}
