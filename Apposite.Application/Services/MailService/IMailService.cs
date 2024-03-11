using System.Net.Mail;

namespace Apposite.Application.Services.MailService
{
    public interface IMailService
    {


        Task SendEmailAsync(string to, string subject, string message, MailAddress from, bool isBodyHtml);

        Task SendEmailAsync(string[] tos, string subject, string message, MailAddress from, bool isBodyHtml);

        Task SendPasswordResetMail(string to, string resetToken);

        Task SendConfirmationMail(string to, string confirmationToken);

    }
}
