using System.Text.Json.Serialization;
using Apposite.Core.Pagination;
using FluentValidation.Results;

namespace Apposite.Core.Dtos
{
    public class Response<T>
    {
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public T Data { get; set; }

        [JsonIgnore]
        public int StatusCode { get; set; }

        [JsonIgnore]
        public bool IsSuccessful { get; set; }
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public string Errors { get; set; }


        // Static Factory Method
        public static Response<T> Success(T data, int statusCode, Pager pager = null)
        {
            return new Response<T> { Data = data, StatusCode = statusCode, IsSuccessful = true, Pagination = pager };
        }

        public static Response<T> Success(int statusCode)
        {
            return new Response<T> { Data = default(T), StatusCode = statusCode, IsSuccessful = true };
        }

        public static Response<T> Fail(List<string> errors, int statusCode)
        {
            return new Response<T>
            {
                Errors = string.Join(";", errors),
                StatusCode = statusCode,
                IsSuccessful = false
            };
        }

        public static Response<T> Fail(ValidationResult result, int statusCode)
        {
            return new Response<T>
            {
                Errors = string.Join(";", result.Errors.Select(x => x.ErrorMessage).ToList()),
                StatusCode = statusCode,
                IsSuccessful = false
            };
        }

        public static Response<T> Fail(string error, int statusCode)
        {
            return new Response<T> { Errors = error, StatusCode = statusCode, IsSuccessful = false };
        }
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public Pager Pagination { get; set; }

    }
}