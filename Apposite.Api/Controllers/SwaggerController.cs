using Apposite.Core.ControllerBases;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [ApiController]
    [ApiExplorerSettings(IgnoreApi = true)]
    [Route("/")]
    public class SwaggerController : CustomControllerBase
    {


        [HttpGet, Route("")]
        public void Swagger()
        {
            Response.Redirect("/swagger/index.html");
        }


    }
}
