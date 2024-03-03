using Apposite.Core.Entity;
using Apposite.Domain.Entities;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace Apposite.Persistence
{
    public class AppositeDbContext : IdentityDbContext<User, Roles, Guid>
    {
        // cd .\Apposite.Persistence\
        // dotnet ef --startup-project ..\Apposite.Api\ migrations add <migration-name>
        // dotnet ef database update
        public AppositeDbContext(DbContextOptions<AppositeDbContext> options) : base(options)
        {
            this.Database.Migrate();
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.Entity<User>().ToTable("User");
            builder.Entity<Roles>().ToTable("Roles");
            builder.Entity<IdentityUserClaim<Guid>>().ToTable("UserClaims");
            builder.Entity<IdentityUserRole<Guid>>().ToTable("UserRoles");
            builder.Entity<IdentityUserLogin<Guid>>().ToTable("UserLogins");
            builder.Entity<IdentityRoleClaim<Guid>>().ToTable("RoleClaims");
            builder.Entity<IdentityUserToken<Guid>>().ToTable("UserTokens");

        }

        public DbSet<User> User { get; set; }
        public DbSet<Roles> Roles { get; set; }
        public DbSet<Recipe> Recipe { get; set; }
        public DbSet<Ingredient> Ingredient { get; set; }
        public DbSet<CuisinePreference> CuisinePreference { get; set; }
        public DbSet<UserIngredient> UserIngredient { get; set; }
        public DbSet<UserHealthIngredient> UserHealthIngredient { get; set; }
        public DbSet<RecipeIngredient> RecipeIngredient { get; set; }
        public DbSet<UserHealth> UserHealth { get; set; }
        public DbSet<UserCuisinePreference> UserCuisinePreference { get; set; }
        public DbSet<Health> Health { get; set; }



        public override int SaveChanges()
        {
            AddTimestamps();
            return base.SaveChanges();
        }

        public override async Task<int> SaveChangesAsync(CancellationToken cancellationToken = default)
        {
            AddTimestamps();
            return await base.SaveChangesAsync(cancellationToken);
        }
        private void AddTimestamps()
        {
            var entities = ChangeTracker.Entries()
                .Where(x => x.Entity is BaseEntity && (x.State == EntityState.Added || x.State == EntityState.Modified));

            foreach (var entity in entities)
            {
                var now = DateTime.UtcNow;

                if (entity.State == EntityState.Added)
                {
                    ((BaseEntity)entity.Entity).CreatedAt = now;
                }
                if (entity.State == EntityState.Modified)
                    ((BaseEntity)entity.Entity).UpdatedAt = now;
            }
        }
    }
}

