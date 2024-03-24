

using Microsoft.Extensions.Configuration;

namespace Apposite.Application.ServiceExtensions
{
    public class ConfigurationExtension
    {
        public static IConfiguration config;
        public static void Initialize(IConfiguration Configuration)
        {
            config = Configuration;
        }
    }
}