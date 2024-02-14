using System.Net.Mail;
using WebApiMail.Model;

namespace WebApiMail.Mail
{
    public class SmtpMail : IMail
    {
        public void SendMail()
        {
            Console.WriteLine($"Time Send mail:{DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")}");
        }

    }
}
