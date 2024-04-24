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
            var userManager = scope.ServiceProvider.GetRequiredService<UserManager<User>>();
            var users = await userManager.GetUsersInRoleAsync(nameof(RoleList.Admin));
            if (users.Count == 0)
            {
                User user = new User() { Email = "admin@admin.com", Name = "Admin", Surname = "Admin", UserName = "admin@admin.com" };
                User user1 = new User() { Email = "tahamuslu@admin.com", Name = "Taha Yasin", Surname = "Muslu", UserName = "tahamuslu@admin.com" };
                User user2 = new User() { Email = "emirkeles@admin.com", Name = "Muhammed Emir", Surname = "Keleş", UserName = "emirkeles@admin.com" };
                User user3 = new User() { Email = "mustafayildiz@admin.com", Name = "Mustafa Emirhan", Surname = "Yıldız", UserName = "mustafayildiz@admin.com" };
                User user4 = new User() { Email = "mustafaturgut@admin.com", Name = "Mustafa", Surname = "Turgut", UserName = "mustafaturgut@admin.com" };
                await userManager.CreateAsync(user, "P@ssw0rd");
                await userManager.CreateAsync(user1, "P@ssw0rd");
                await userManager.CreateAsync(user2, "P@ssw0rd");
                await userManager.CreateAsync(user3, "P@ssw0rd");
                await userManager.CreateAsync(user4, "P@ssw0rd");
                await userManager.AddToRoleAsync(user, nameof(RoleList.Admin));
                await userManager.AddToRoleAsync(user1, nameof(RoleList.Admin));
                await userManager.AddToRoleAsync(user2, nameof(RoleList.Admin));
                await userManager.AddToRoleAsync(user3, nameof(RoleList.Admin));
                await userManager.AddToRoleAsync(user4, nameof(RoleList.Admin));
            }
        }
        
    }
}
