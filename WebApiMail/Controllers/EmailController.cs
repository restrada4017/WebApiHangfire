using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Linq.Expressions;
using WebApiMail.Mail;

namespace WebApiMail.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmailController : ControllerBase
    {
        private readonly IMail _imail;

        public EmailController(IMail imail)
        {
            _imail = imail;
        }

        [HttpGet, Route("SendMail")]
        public async Task<IActionResult> SendMail()
        {
            try
            {
                _imail.SendMail();
                return Ok();
            }
            catch (Exception ex)
            {
                throw ex;
            }      
           
        }
    }
}
