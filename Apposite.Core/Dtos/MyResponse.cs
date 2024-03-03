using System.Text.Json.Serialization;
using Apposite.Core.Pagination;
using FluentValidation.Results;

namespace Apposite.Core.Dtos
{
    public class MyResponse<T>
    {
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public T? Data { get; set; }

        [JsonIgnore]
        public int StatusCode { get; set; }

        [JsonIgnore]
        public bool IsSuccessful { get; set; }

        public string? Message { get; set; }

        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public Pager Pagination { get; set; }

        // Static Factory Method
        public static MyResponse<T> Success(T data, int statusCode, Pager pager = null)
        {
            return new MyResponse<T> { Data = data, StatusCode = statusCode, IsSuccessful = true, Pagination = pager };
        }

        public static MyResponse<T> Success(int statusCode)
        {
            return new MyResponse<T> { Data = default(T), StatusCode = statusCode, IsSuccessful = true };
        }

        public static MyResponse<T> Fail(string message, int statusCode)
        {
            return new MyResponse<T>
            {
                Message = message,
                StatusCode = statusCode,
                IsSuccessful = false
            };
        }

        public static MyResponse<T> Fail(ValidationResult result, int statusCode)
        {
            return new MyResponse<T>
            {
                Message = string.Join(";", result.Errors.Select(x => x.ErrorMessage).ToList()),
                StatusCode = statusCode,
                IsSuccessful = false
            };
        }

    }
}