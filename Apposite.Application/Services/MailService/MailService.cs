using System.Net;
using System.Net.Mail;
using System.Text;
using Microsoft.Extensions.Configuration;

namespace Apposite.Application.Services.MailService
{
    public class MailService : IMailService
    {
        private readonly IConfiguration _config;

        public MailService(IConfiguration config)
        {
            _config = config;
        }

        public async Task SendEmailAsync(string to, string subject, string message, MailAddress from, bool isBodyHtml = true)
        {
            await SendEmailAsync(new string[] { to }, subject, message,from, isBodyHtml);
        }

        public async Task SendEmailAsync(string[] tos, string subject, string message, MailAddress from, bool isBodyHtml = true)
        {
            MailMessage mail = new();
            mail.IsBodyHtml = isBodyHtml;
            foreach (var to in tos)
            {
                mail.To.Add(to);
            }
            mail.Subject = subject;
            mail.Body = message;
            mail.From = from;

            SmtpClient smtp = new();

            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential(_config["Mail:UserName"], _config["Mail:Password"]);
            smtp.Host = _config["Mail:Host"];
            smtp.Port = int.Parse(_config["Mail:Port"]);
            smtp.EnableSsl = true;
            await smtp.SendMailAsync(mail);

        }

        public async Task SendPasswordResetMail(string to, string resetToken)
        {
            var mail = new MailMessage();
            mail.To.Add(to);
            mail.IsBodyHtml = true;
            mail.Subject = "Intelligrade Reset Password";
            //mail.Body = $"Merhaba,\n\nŞifrenizi sıfırlamak için aşağıdaki linke tıklayın:\n\n{_config["AppUrl:prod"]}/resetpassword?resetToken={resetToken}\n\nBu link 5 dakika içinde geçersiz olacaktır.";
            mail.From = new("intelligrade@intelligrade.ai", "Intelligrade", Encoding.UTF8);
            mail.Body = @$"
<!DOCTYPE html>
<html lang=""en"">

<head>
    <meta charset=""UTF-8"">
    <meta name=""viewport"" content=""width=device-width, initial-scale=1.0"">
    <title>Document</title>
    <style>
        @font-face {{
            font-family: ""Poppins"";
            src: url('https://fonts.googleapis.com/css2?family=Poppins:wght@500;600;700&display=swap');
        }}

        html {{
            font-size: 11px;
        }}

        @media only screen and (min-width: 720px) {{
            html {{
                font-size: 13px;
            }}
        }}

        @media only screen and (min-width: 960px) {{
            html {{
                font-size: 15px;
            }}
        }}

        @media only screen and (min-width: 1240px) {{
            html {{
                font-size: 17px;
            }}
        }}
    </style>
</head>

<body style=""background-color: #dddfea;margin: 0;padding: 0;"">
    <div
        style=""background-color: #dddfea;max-width: 100vw;max-height: 100vh;width: 100vw;height: 100vh;margin: 0;padding: 0;align-items: center; display: flex; flex-direction: column;"">
        <div style=""height: 1rem;""></div>
        <div style=""width: fit-content;margin: auto;"">
            <!-- <img src=""https://test.intelligrade.ai/static/media/logo-color.d7fc2cb5b0996d5bc2e9.png"" alt=""Logo""
                style=""border-radius: 0.5rem;width: 2.3rem;height: 2.3rem;margin-right: 1rem;""> -->
            <span
                style=""font-family: 'Poppins', sans-serif;font-size: 1.5rem;font-weight: 800;color: #331e6d;margin: auto 0;"">
                INTELLIGRADE
            </span>
        </div>
        <div
            style=""background-color: #f2f2f2;max-width: 70%; max-height:65%;width: 70%; height: 50%;border-radius: 1.5rem;margin: auto;display: flex; flex-direction: column;justify-content: center;align-items: center;margin-top: 1rem;margin-bottom: 1rem;"">
            <!-- <img src=""https://intelligrade.azurewebsites.net/images/reset.png"" style=""width: 10rem; height: 10rem;""> -->



            <div style=""text-align: center;margin: 1rem 2rem;"">
                <h2 style=""font-family: 'Poppins', sans-serif;font-size: 1.3rem;font-weight: 600;"">
                    Reset Your Password
                </h2>
                <p style=""font-family: 'Poppins', sans-serif;font-size: 0.9rem;font-weight: 500;"">
                    Your account security is important to us. Upon your password renewal request, you can set a new
                    password
                    using the link below. This step will help us maintain the security of your account and provide the
                    best
                    service for you.
                </p>

                <a href=""{_config["AppUrl:prod"]}/resetpassword?resetToken={resetToken}"">
                    <button
                        style=""background-color: #5161ce; width: 13rem;height: 3rem;border-radius: 1rem;border-width: 0; color: #fff;margin: 1rem auto;cursor: pointer;font-family: 'Poppins', sans-serif;font-weight: 600;font-size: 1rem;"">
                        Reset My Password</button>
                </a>

            </div>



        </div>

        <div style=""margin: auto;width: fit-content;"">
            <a href=""https://www.facebook.com/intelligradeai"" style=""text-decoration: none;"">
                <img src=""https://intelligrade.azurewebsites.net/images/social1.png"" style=""height: 2rem; width: 2rem;"">
            </a>
            <span>&nbsp;</span>
            <a href=""https://twitter.com/intelligradeai"" style=""text-decoration: none;"">
                <img src=""https://intelligrade.azurewebsites.net/images/social2.png"" style=""height: 2rem; width: 2rem;"">
            </a>
            <span>&nbsp;</span>
            <a href=""https://www.linkedin.com/company/intelligrade-ai/"" style=""text-decoration: none;"">
                <img src=""https://intelligrade.azurewebsites.net/images/social3.png"" style=""height: 2rem; width: 2rem;"">
            </a>
            <span>&nbsp;</span>
            <a href=""https://www.instagram.com/intelligradeai/"" style=""text-decoration: none;"">
                <img src=""https://intelligrade.azurewebsites.net/images/social4.png"" style=""height: 2rem; width: 2rem;"">
            </a>
        </div>

        <br>

        <p
            style=""color: #A3A3A3;font-family: 'Poppins', sans-serif;font-weight: 500;font-size: 1rem;margin: auto;width: fit-content;"">
            Copyright &copy; 2023 IntelliGrade
        </p>
        <!-- <p
                style=""color: #A3A3A3;font-family: 'Poppins', sans-serif;font-weight: 500;font-size: 1rem;margin: 0 2rem 0 2rem;text-align: center;"">
                Çorum
                Osmancık Bilmemne
                Mahallesi
                Emirhanların Sokak No: 6119</p> -->

    </div>

</body>

</html>
";


            await SendEmailAsync(mail.To.ToString(), mail.Subject, mail.Body,mail.From, true);
        }

        public async Task SendConfirmationMail(string to, string confirmationToken)
        {
            var mail = new MailMessage();
            mail.To.Add(to);
            mail.IsBodyHtml = true;
            mail.Subject = "Intelligrade Confirm Mail";
            mail.From = new("intelligrade@intelligrade.ai", "Intelligrade",Encoding.UTF8);
            //mail.Body = $"Merhaba,\n\nHesabınızı onaylamak için aşağıdaki linke tıklayın:\n\n{_config["AppUrl:prod"]}/confirm?token={confirmationToken}\n\nBu link sadece bir kez kullanılabilir.";
            mail.Body = @$"
<!DOCTYPE html>
<html lang=""en"">

<head>
    <meta charset=""UTF-8"">
    <meta name=""viewport"" content=""width=device-width, initial-scale=1.0"">
    <title>Document</title>
    <style>
        @font-face {{
            font-family: ""Poppins"";
            src: url('https://fonts.googleapis.com/css2?family=Poppins:wght@500;600;700&display=swap');
        }}

        html {{
            font-size: 11px;
        }}

        @media only screen and (min-width: 720px) {{
            html {{
                font-size: 13px;
            }}
        }}

        @media only screen and (min-width: 960px) {{
            html {{
                font-size: 15px;
            }}
        }}

        @media only screen and (min-width: 1240px) {{
            html {{
                font-size: 17px;
            }}
        }}
    </style>
</head>

<body style=""background-color: #dddfea;margin: 0;padding: 0;"">
    <div
        style=""background-color: #dddfea;max-width: 100vw;max-height: 100vh;width: 100vw;height: 100vh;margin: 0;padding: 0;align-items: center; display: flex; flex-direction: column;"">
        <div style=""height: 1rem;""></div>
        <div style=""width: fit-content;margin: auto;"">
            <!-- <img src=""https://test.intelligrade.ai/static/media/logo-color.d7fc2cb5b0996d5bc2e9.png"" alt=""Logo""
                style=""border-radius: 0.5rem;width: 2.3rem;height: 2.3rem;margin-right: 1rem;""> -->
            <span
                style=""font-family: 'Poppins', sans-serif;font-size: 1.5rem;font-weight: 800;color: #331e6d;margin: auto 0;"">
                INTELLIGRADE
            </span>
        </div>
        <div
            style=""background-color: #f2f2f2;max-width: 70%; max-height:65%;width: 70%; height: 50%;border-radius: 1.5rem;margin: auto;display: flex; flex-direction: column;justify-content: center;align-items: center;margin-top: 1rem;margin-bottom: 1rem;"">

            <!-- <img src=""https://intelligrade.azurewebsites.net/images/confirm.png"" style=""width: 10rem; height: 10rem;""> -->


            <div style=""text-align: center;margin: 1rem 2rem;"">
                <h2 style=""font-family: 'Poppins', sans-serif;font-size: 1.3rem;font-weight: 600;"">
                    Confirm Your Email Adress
                </h2>
                <p style=""font-family: 'Poppins', sans-serif;font-size: 0.9rem;font-weight: 500;"">
                    We are very pleased to
                    have you on board! In order for us to fully activate your account, please confirm your email address
                    by
                    clicking the link below. This step will help us secure your account and provide you with a better
                    experience.
                </p>

                <a href=""{_config["AppUrl:prod"]}/confirm?token={confirmationToken}"">
                    <button
                        style=""background-color: #5161ce; width: 13rem;height: 3rem;border-radius: 1rem;border-width: 0; color: #fff;margin: 1rem auto;cursor: pointer;font-family: 'Poppins', sans-serif;font-weight: 600;font-size: 1rem;"">
                        Confirm Email</button>
                </a>

            </div>



        </div>

        <div style=""margin: auto;width: fit-content;"">
            <a href=""https://www.facebook.com/intelligradeai"" style=""text-decoration: none;"">
                <img src=""https://intelligrade.azurewebsites.net/images/social1.png"" style=""height: 2rem; width: 2rem;"">
            </a>
            <span>&nbsp;</span>
            <a href=""https://twitter.com/intelligradeai"" style=""text-decoration: none;"">
                <img src=""https://intelligrade.azurewebsites.net/images/social2.png"" style=""height: 2rem; width: 2rem;"">
            </a>
            <span>&nbsp;</span>
            <a href=""https://www.linkedin.com/company/intelligrade-ai/"" style=""text-decoration: none;"">
                <img src=""https://intelligrade.azurewebsites.net/images/social3.png"" style=""height: 2rem; width: 2rem;"">
            </a>
            <span>&nbsp;</span>
            <a href=""https://www.instagram.com/intelligradeai/"" style=""text-decoration: none;"">
                <img src=""https://intelligrade.azurewebsites.net/images/social4.png"" style=""height: 2rem; width: 2rem;"">
            </a>
        </div>

        <br>

        <p
            style=""color: #A3A3A3;font-family: 'Poppins', sans-serif;font-weight: 500;font-size: 1rem;margin: auto;width: fit-content;"">
            Copyright &copy; 2023 IntelliGrade
        </p>
        <!-- <p
                style=""color: #A3A3A3;font-family: 'Poppins', sans-serif;font-weight: 500;font-size: 1rem;margin: 0 2rem 0 2rem;text-align: center;"">
                Çorum
                Osmancık Bilmemne
                Mahallesi
                Emirhanların Sokak No: 6119</p> -->

    </div>

</body>

</html>
";
            await SendEmailAsync(mail.To.ToString(), mail.Subject, mail.Body,mail.From, true);
        }

    }
}