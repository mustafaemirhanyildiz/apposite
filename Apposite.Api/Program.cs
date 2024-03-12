using System.Text;
using Apposite.Application.Middleware;
using Apposite.Application.ServiceExtensions;
using Apposite.Application.Services;
using Apposite.Application.Settings;
using Apposite.Domain.Entities;
using Apposite.Persistence;
using Apposite.Persistence.Seeds;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using Serilog;
using MediatR;
using Apposite.Application.Handlers;
using Apposite.Application.ServiceExtensions.ElasticSearch;


var builder = WebApplication.CreateBuilder(args);

ElasticSearchExtension.Initialize(builder.Environment.IsDevelopment());

builder.Configuration.AddJsonFile("jwtSettings.json");
builder.Services.Configure<JwtSettings>(builder.Configuration.GetSection("Jwt"));
builder.Services.Configure<RedisSettings>(builder.Configuration.GetSection("RedisSettings"));
builder.Services.Configure<ElasticSettings>(builder.Configuration.GetSection("ElasticConfiguration"));
builder.Services.Configure<AzureBlobSettings>(builder.Configuration.GetSection("AzureBlobSettings"));

builder.Services.AddDbContext<AppositeDbContext>(options =>
{
    options.UseNpgsql(Environment.GetEnvironmentVariable("ConnectionString") ?? builder.Configuration.GetConnectionString("localDb"));
});
builder.Services.AddSingleton<RedisService>(sp =>
{
    var redisSettings = sp.GetRequiredService<IOptions<RedisSettings>>().Value;

    var redis = new RedisService(redisSettings.Host, redisSettings.Port, redisSettings.Parameters);

    redis.Connect();

    return redis;
});
builder.Services.AddSingleton<BlobStorageService>();
builder.Services.AddElasticSearch(builder.Configuration);
builder.Services.AddLogging().AddSerilog();
Apposite.Application.ServiceExtensions.LoggerExtensions.ConfigureLogging();

Log.Information("Logger Started");
builder.Services.RegisterFluentValidationCommandValidators();

builder.Services.AddIdentity<User, Roles>(options =>
{
    //options.Tokens.PasswordResetTokenProvider = "passwordReset";
    options.SignIn.RequireConfirmedAccount = false;
    options.Password.RequireLowercase = true;
    options.Password.RequireUppercase = true;
    options.Password.RequiredUniqueChars = 1;
    options.Password.RequiredLength = 8;
    options.Password.RequireNonAlphanumeric = true;
    options.Password.RequireDigit = true;
    options.User.RequireUniqueEmail = true;
    //options.Tokens.PasswordResetTokenProvider = TokenOptions.DefaultEmailProvider;

})
    .AddEntityFrameworkStores<AppositeDbContext>()
    .AddDefaultTokenProviders()
    // .AddTokenProvider<PasswordResetTokenProvider<Users>>("passwordReset")
    .AddUserStore<UserStore<User, Roles, AppositeDbContext, Guid>>()
    .AddRoleStore<RoleStore<Roles, AppositeDbContext, Guid>>();

builder.Services.AddLocalization(options => options.ResourcesPath = "Resources");
AppContext.SetSwitch("Npgsql.EnableLegacyTimestampBehavior", true);

builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
}).AddJwtBearer(options =>
{
    options.RequireHttpsMetadata = false;
    options.SaveToken = true;
    options.TokenValidationParameters.RoleClaimType = "role";
    options.TokenValidationParameters = new TokenValidationParameters()
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidAudience = builder.Configuration["Jwt:Audience"],
        ValidIssuer = builder.Configuration["Jwt:Issuer"],
        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration["Jwt:Key"])),
        ValidateLifetime = true
    };
});
builder.Services.Configure<DataProtectionTokenProviderOptions>(options => options.TokenLifespan = TimeSpan.FromMinutes(30));

builder.Services.AddScoped<JwtGenerator>();
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(setup =>
    {
        var jwtSecurityScheme = new OpenApiSecurityScheme
        {
            BearerFormat = "JWT",
            Name = "JWT Authentication",
            In = ParameterLocation.Header,
            Type = SecuritySchemeType.Http,
            Scheme = JwtBearerDefaults.AuthenticationScheme,
            Description = "Put **_ONLY_** your JWT Bearer token on textbox below!",

            Reference = new OpenApiReference
            {
                Id = JwtBearerDefaults.AuthenticationScheme,
                Type = ReferenceType.SecurityScheme
            }
        };

        setup.AddSecurityDefinition(jwtSecurityScheme.Reference.Id, jwtSecurityScheme);

        setup.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        { jwtSecurityScheme, Array.Empty<string>() }
    });
    }
);
builder.Services.AddMediatR(typeof(AuthCommandHandler));
builder.Services.ExternalServices();


// cors
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowSpecificOrigins", policy =>
    {
        policy.WithOrigins("http://localhost:3000",
            "https://test.intelligrade.xyz",
            "https://www.intelligrade.xyz",
            "https://intelligrade.xyz"
            )
        .SetIsOriginAllowedToAllowWildcardSubdomains()
        .AllowAnyHeader()
        .AllowAnyMethod()
        .AllowCredentials();
    });
});

var app = builder.Build();

using (var migrationSvcScope = app.Services.GetRequiredService<IServiceScopeFactory>().CreateScope())
{
    try
    {
        var context = migrationSvcScope.ServiceProvider.GetService<AppositeDbContext>().Database;
        var migrations = context.GetPendingMigrations();
        await context.MigrateAsync();
    }
    catch (Exception)
    {

    }
}
RoleSeed.SeedRoles(app.Services).Wait();
AdminSeed.SeedAdmin(app.Services).Wait();

//var log = app.Services.GetRequiredService<Serilog.ILogger>();
app.UseMiddleware<CustomExceptionHandler>();



app.UseMiddleware<JwtMiddleware>();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment() || true)
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseRouting();

app.UseCors("AllowSpecificOrigins");

app.UseAuthorization();

app.MapControllers();

app.Run();
