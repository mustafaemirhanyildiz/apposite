using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Nest;
using Newtonsoft.Json;
using System.Net.Http.Headers;
using System.Text;

namespace Apposite.Application.ServiceExtensions.ElasticSearch
{
    public static class ElasticSearchExtension
    {
        public static async void AddElasticSearch(this IServiceCollection services, IConfiguration configuration)
        {
            var baseUrl = configuration["ElasticConfiguration:Uri"];
            var username = configuration["ElasticConfiguration:Username"];
            var password = configuration["ElasticConfiguration:Password"];
            var index = configuration["ElasticConfiguration:IngredientIndex"];

            var settings = new ConnectionSettings(new Uri(baseUrl ?? ""));

            settings.EnableApiVersioningHeader();
            settings = settings.BasicAuthentication(username, password);
            var client = new ElasticClient(settings);
            services.AddSingleton<IElasticClient>(client);

            if (!client.Indices.Exists(index).Exists)
            {
                using (var httpClient = new HttpClient())
                {
                    var credentials = Encoding.ASCII.GetBytes($"{username}:{password}");
                    httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(credentials));

                    var jsonStr = File.ReadAllText("../Apposite.Application/ServiceExtensions/ElasticSearch/ingredient-index.json");
                    var json = JsonConvert.DeserializeObject(jsonStr);

                    var response = await httpClient.PutAsync($"{baseUrl}/{index}", new StringContent(json.ToString(), Encoding.UTF8, "application/json"));

                    if (response.IsSuccessStatusCode)
                    {
                        Console.WriteLine("Index Created");
                    }
                }
            }
        }
    }
}