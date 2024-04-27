using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace Apposite.Persistence.Seeds
{
    public class StarterSeed
    {
        public static async Task SeedStarter(IServiceProvider _serviceProvider)
        {
            using var scope = _serviceProvider.CreateScope();
            var dbContext = scope.ServiceProvider.GetRequiredService<AppositeDbContext>();
            var data1 = await dbContext.CuisinePreferences.CountAsync();
            var data2 = await dbContext.Healths.CountAsync();
            var data3 = await dbContext.Ingredients.CountAsync();
            var data4 = await dbContext.Recipes.CountAsync();
            var data5 = await dbContext.RecipeIngredients.CountAsync();
            var data6 = await dbContext.RecipeSteps.CountAsync();
            var data7 = await dbContext.RecipeStepMediaFiles.CountAsync();

            if (data1 == 0 && data2 == 0 && data3 == 0 && data4 == 0 && data5 == 0 && data6 == 0 && data7 == 0)
            {
                //read from sql file
                var sql = "";
                try
                {
                    sql = File.ReadAllText("starter.sql");
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
                }
                if (!string.IsNullOrEmpty(sql))
                {
                    dbContext.Database.ExecuteSqlRaw(sql);
                    dbContext.SaveChanges();
                }
            }
        }
    }
}
