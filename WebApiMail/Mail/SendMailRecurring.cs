namespace WebApiMail.Mail
{
    public class SendMailRecurring
    {
        public static  void Run()
        {
            Console.WriteLine($"Time Send mail:{DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")}");
        }
    }
}
