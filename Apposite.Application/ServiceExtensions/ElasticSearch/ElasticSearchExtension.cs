using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Nest;
using Newtonsoft.Json;
using System.Net.Http.Headers;
using System.Text;

namespace Apposite.Application.ServiceExtensions.ElasticSearch
{
    public static class ElasticSearchExtension
    {
        private static bool _isDevelopment;

        public static void Initialize(bool isDevelopment)
        {
            _isDevelopment = isDevelopment;
        }

        public static async void AddElasticSearch(this IServiceCollection services, IConfiguration configuration)
        {
            var baseUrl = configuration["ElasticConfiguration:Uri"];
            var username = configuration["ElasticConfiguration:Username"];
            var password = configuration["ElasticConfiguration:Password"];
            var ingredientIndex = configuration["ElasticConfiguration:IngredientIndex"];
            var cuisinePreferenceIndex = configuration["ElasticConfiguration:CuisinePreferenceIndex"];
            var healthIndex = configuration["ElasticConfiguration:HealthIndex"];

            var settings = new ConnectionSettings(new Uri(baseUrl ?? ""));

            settings.EnableApiVersioningHeader();
            settings = settings.BasicAuthentication(username, password);
            var client = new ElasticClient(settings);
            services.AddSingleton<IElasticClient>(client);

            if (!client.Indices.Exists(ingredientIndex).Exists)
            {
                using (var httpClient = new HttpClient())
                {
                    var credentials = Encoding.ASCII.GetBytes($"{username}:{password}");
                    httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(credentials));
                    var jsonStr = "";
                    if (_isDevelopment)
                        jsonStr = File.ReadAllText("../Apposite.Application/ServiceExtensions/ElasticSearch/ingredient-index.json");
                    else
                        jsonStr = File.ReadAllText(Path.Combine(Directory.GetCurrentDirectory(), "ServiceExtensions/ElasticSearch/ingredient-index.json"));
                    var json = JsonConvert.DeserializeObject(jsonStr);

                    var response = await httpClient.PutAsync($"{baseUrl}/{ingredientIndex}", new StringContent(json.ToString(), Encoding.UTF8, "application/json"));

                    if (response.IsSuccessStatusCode)
                    {
                        Console.WriteLine("Index Created");
                    }
                }
            }

            if (!client.Indices.Exists(cuisinePreferenceIndex).Exists)
            {
                using (var httpClient = new HttpClient())
                {
                    var credentials = Encoding.ASCII.GetBytes($"{username}:{password}");
                    httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(credentials));
                    var jsonStr = "";
                    if(_isDevelopment)
                    jsonStr = File.ReadAllText("../Apposite.Application/ServiceExtensions/ElasticSearch/cuisinePreference-index.json");
                    else
                    jsonStr = File.ReadAllText(Path.Combine(Directory.GetCurrentDirectory(), "ServiceExtensions/ElasticSearch/cuisinePreference-index.json"));
                    var json = JsonConvert.DeserializeObject(jsonStr);

                    var response = await httpClient.PutAsync($"{baseUrl}/{cuisinePreferenceIndex}", new StringContent(json.ToString(), Encoding.UTF8, "application/json"));

                    if (response.IsSuccessStatusCode)
                    {
                        Console.WriteLine("Index Created");
                    }
                }
            }

            if (!client.Indices.Exists(healthIndex).Exists)
            {
                using (var httpClient = new HttpClient())
                {
                    var credentials = Encoding.ASCII.GetBytes($"{username}:{password}");
                    httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(credentials));

                    var jsonStr = "";
                    if (_isDevelopment)
                        jsonStr = File.ReadAllText("../Apposite.Application/ServiceExtensions/ElasticSearch/health-index.json");
                    else
                        jsonStr = File.ReadAllText(Path.Combine(Directory.GetCurrentDirectory(), "ServiceExtensions/ElasticSearch/health-index.json"));
                    var json = JsonConvert.DeserializeObject(jsonStr);

                    var response = await httpClient.PutAsync($"{baseUrl}/{healthIndex}", new StringContent(json.ToString(), Encoding.UTF8, "application/json"));

                    if (response.IsSuccessStatusCode)
                    {
                        Console.WriteLine("Index Created");
                    }
                }
            }


        }
    }
}