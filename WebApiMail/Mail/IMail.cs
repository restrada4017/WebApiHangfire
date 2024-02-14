using System.Net.Mail;
using WebApiMail.Model;

namespace WebApiMail.Mail
{
    public interface IMail
    {
        void SendMail();
    }
}
