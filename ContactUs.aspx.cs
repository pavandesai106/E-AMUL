using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         MailMessage mail = new MailMessage();


        mail.To.Add("247healthcare247@gmail.com");

        string name = TextBox3.Text;
        string email = TextBox4.Text;
        string phoneno = TextBox6.Text;
        string address = TextBox5.Text;
        string comment = TextBox7.Text;


        mail.Subject = "Inquiry";

        mail.Body = "From:" + name + "<br/>" + "Email:" + email + "<br/>" + "Phone No:" + phoneno + "<br/>" + "Address:" + address + "<br/>" + "Comments:" + comment;
        //mail.From = new MailAddress("247healthcare247@gmail.com");
        mail.From = new MailAddress(TextBox4.Text);
        mail.IsBodyHtml = true;

        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

        client.EnableSsl = true;
        NetworkCredential credentials = new NetworkCredential("247healthcare247@gmail.com", "healthcare247");

        client.Credentials = credentials;

        try
        {

            client.Send(mail);

            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Response.Write(@"<script language='javascript'>alert('Mail sent\n.');</script>");


        }
        catch
        {

            Button2.Text = "Fail";

        }

    }
    }
