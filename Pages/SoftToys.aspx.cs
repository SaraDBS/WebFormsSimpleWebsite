using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Pages_SoftToys : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreserve_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            try
            {
                //MailMessage mailMessage = new MailMessage();
                //mailMessage.To.Add("tanujjja@yahoo.com");
                //mailMessage.From = new MailAddress("tanujjja@yahoo.com");
                //mailMessage.Subject = "Reservation confirmed";
                //mailMessage.Body = "Hello,\n\nThis is to confim your reservation";
                //SmtpClient smtpClient = new SmtpClient("smtp.mail.yahoo.com", 465);
                //smtpClient.Credentials = new System.Net.NetworkCredential()
                //{
                //    UserName = "tanujjja@yahoo.com",
                //    Password = "tanyab.131910"
                //};

                //smtpClient.EnableSsl = true;
                //smtpClient.Send(mailMessage);
                //Response.Write("Email successfully sent");


                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("tanujabaijnath@gmail.com");
                mail.To.Add("tanujabaijnath@gmail.com");
                mail.Subject = "Test Mail";
                mail.Body = "This is for testing SMTP mail from GMAIL";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("tanujabaijnath@gmail.com", "tanyab.13191011");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
               // MessageBox.Show("mail Send");

            }
            catch (Exception ex)
            {
                Response.Write("Could not send the e-mail - error: " + ex.Message);
            }

            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "jsAlert", "alert('Successfully Reserved');", true);
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "jsClearForm", "document.getElementById('form1').reset();", true);

            txtEmail.Text = "";
            txtMobileNumber.Text = "";
        }

    }
}