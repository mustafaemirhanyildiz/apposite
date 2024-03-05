using System.Text.Json.Serialization;
using Apposite.Core.Pagination;
using FluentValidation.Results;

namespace Apposite.Core.Dtos
{
    public class Response<T>
    {
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public T? Data { get; set; }

        [JsonIgnore]
        public int StatusCode { get; set; }

        public List<string>? Messages { get; set; }

        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public Pager? Pagination { get; set; }

        //[JsonIgnore]
        //public bool IsSuccessful { get; set; }

        // Static Factory Methods
        public static Response<T> Success(int statusCode)
        {
            return new Response<T> { StatusCode = statusCode };
        }

        public static Response<T> Success(int statusCode, T data, Pager? pager = null)
        {
            return new Response<T> { StatusCode = statusCode, Data = data, Pagination = pager };
        }

        public static Response<T> Success(int statusCode, List<string>? messages)
        {
            return new Response<T> { StatusCode = statusCode, Messages = messages };
        }

        public static Response<T> Success(int statusCode, string message)
        {
            return new Response<T> { StatusCode = statusCode, Messages = new List<string> { message } };
        }

        public static Response<T> Success(int statusCode, List<string>? messages, T data, Pager? pager = null)
        {
            return new Response<T> { Data = data, StatusCode = statusCode, Pagination = pager, Messages = messages };
        }

        public static Response<T> Success(int statusCode, string message, T data, Pager? pager = null)
        {
            return new Response<T> { Data = data, StatusCode = statusCode, Pagination = pager, Messages = new List<string> { message } };
        }

        public static Response<T> Fail(int statusCode)
        {
            return new Response<T> { StatusCode = statusCode };
        }

        public static Response<T> Fail(int statusCode, T data, Pager? pager = null)
        {
            return new Response<T> { StatusCode = statusCode, Data = data, Pagination = pager };
        }

        public static Response<T> Fail(int statusCode, List<string>? messages)
        {
            return new Response<T> { StatusCode = statusCode, Messages = messages };
        }
        public static Response<T> Fail(int statusCode, string message)
        {
            return new Response<T> { StatusCode = statusCode, Messages = new List<string> { message } };
        }

        public static Response<T> Fail(int statusCode, List<string>? messages, T data, Pager? pager = null)
        {
            return new Response<T> { Data = data, StatusCode = statusCode, Pagination = pager, Messages = messages };
        }

        public static Response<T> Fail(int statusCode, string message, T data, Pager? pager = null)
        {
            return new Response<T> { Data = data, StatusCode = statusCode, Pagination = pager, Messages = new List<string> { message } };
        }

        public static Response<T> Fail(int statusCode, ValidationResult result)
        {
            return new Response<T> { Messages = result.Errors.Select(x => x.ErrorMessage).ToList(), StatusCode = statusCode };
        }

    }
}