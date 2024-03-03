using Apposite.Domain.Entities;
using Apposite.Domain.Enums;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.DependencyInjection;

namespace Apposite.Persistence.Seeds
{
    public class RoleSeed
    {
        public static async Task SeedRoles(IServiceProvider _serviceProvider)
        {
            using var scope = _serviceProvider.CreateScope();
            var roleManager = scope.ServiceProvider.GetRequiredService<RoleManager<Roles>>();

            if (roleManager.Roles.Count() == 0)
            {
                foreach (var roleName in Enum.GetNames(typeof(RoleList)))
                {
                    bool roleExists = await roleManager.RoleExistsAsync(roleName);
                    if (!roleExists)
                        await roleManager.CreateAsync(new Roles() { Name = roleName });
                    //await SetPermissions(_serviceProvider, ParsToRoles(roleName));
                }
            }
        }

        private static RoleList ParsToRoles(string name)
        {
            return Enum.Parse<RoleList>(name);
        }
    }
}