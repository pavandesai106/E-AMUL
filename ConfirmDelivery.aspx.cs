using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
public partial class ConfirmDelivery : System.Web.UI.Page
{
    static string cnstr = System.Configuration.ConfigurationManager.AppSettings["connectionstring"];
    SqlConnection con = new SqlConnection(cnstr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = GridView1.SelectedRow.Cells[0].Text;
        Label4.Text = GridView1.SelectedRow.Cells[1].Text;
        GridView2.Visible = true;
        Label1.Visible = true;
        Label2.Visible = true;
        Button1.Visible = true;
        Button2.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        foreach (GridViewRow r in GridView2.Rows)
        {
            //Session["e"] = r.Cells[1].Text;
            int originalcount = Convert.ToInt32(r.Cells[4].Text);
            int orderedcount = Convert.ToInt32(r.Cells[2].Text);
            int res = originalcount - orderedcount;
            SqlCommand cmd = new SqlCommand("update product_detail set Quantity='" + res + "' where Pname='" + r.Cells[3].Text + "'", con);
            cmd.ExecuteNonQuery();

        }
        con.Close();
        // con.Open();
        //SqlCommand cmd1 = new SqlCommand("update order_detail set status='delivered' where order_id='" + Label2.Text + "'", con);
        //cmd1.ExecuteNonQuery();
        // con.Close();
        GridView1.DataBind();
        GridView2.Visible = false;

        Label1.Visible = false;
        Label2.Visible = false;
        Button1.Visible = false;
        Button2.Visible = false;
        // con.Open();
        //string select = "select user_id from reg_detail where order_id='"+Session["e"]+"'";
        //SqlCommand cmd5 = new SqlCommand(select,con);
        //SqlDataReader dr1 = cmd5.ExecuteReader();
        //if (dr1.HasRows)
        //{
        //    while (dr1.Read())
        //    {
                MailMessage mail = new MailMessage();

                mail.To.Add(Label4.Text);

                mail.Subject = "regarding you order approved , order id="+Label2.Text;

                mail.Body = "From:" + "Amul" + "<br/>" + "anand " + "<br/>" + "Comments:" + "Your Amul order has been confirmed by the Administrator and will be delivered to your place within 24 hours. Kindly be ready with the payment. For any other queries, contact us on our registered contact number";
                mail.From = new MailAddress("amulfyp@gmail.com");
                mail.IsBodyHtml = true;

                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

                client.EnableSsl = true;
                NetworkCredential credentials = new NetworkCredential("amulfyp@gmail.com", "admin123456");

                client.Credentials = credentials;
                try
                {


       // dr1.Close();
        con.Open();
        client.Send(mail);
        SqlCommand cmd1 = new SqlCommand("update order_detail set status='delivered' where order_id='" + Label2.Text + "'", con);
        int a = cmd1.ExecuteNonQuery();
        if (a == 1)
        {
            GridView1.DataBind();
            GridView2.DataBind();
            Response.Write(@"<script>alert('Mail sent');</script>");

        }

                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                    //con.Close();
                }
                finally
                {
                    con.Close();
                   // Session["e"] = null;
                }
    }
    //}
    //else
    //{

    //    Button1.Text = "no data";

    //}
    // }
    protected void Button2_Click(object sender, EventArgs e)
    {
       

        Label1.Visible = false;
        Label2.Visible = false;
        Button1.Visible = false;
        Button2.Visible = false;
       
            MailMessage mail = new MailMessage();

            mail.To.Add(Label4.Text);

            mail.Subject = "regarding your order rejection , order -id="+Label2.Text;

            mail.Body = "From:" + "Amul" + "<br/>" + "anand " + "<br/>" + "Comments:" + "Your Amul order has been rejected by the Administrator due to some reason. For queries, contact us on our registered contact number";
            mail.From = new MailAddress("amulfyp@gmail.com");
            mail.IsBodyHtml = true;

            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

            client.EnableSsl = true;
            NetworkCredential credentials = new NetworkCredential("amulfyp@gmail.com", "admin123456");

            client.Credentials = credentials;
            try
            {



                client.Send(mail);
                    con.Open();
        SqlCommand cmd1 = new SqlCommand("update order_detail set status='rejected' where order_id='" + Label2.Text + "'", con);
        int a = cmd1.ExecuteNonQuery();
        if (a == 1)
        {
            GridView2.DataBind();
            Response.Write(@"<script>alert('mail sent');</script>");

        }
        con.Close();
        GridView1.DataBind();
        GridView2.Visible = false;
            }
            catch (Exception ex)
            {


            }
            finally
            {
                con.Close();
            }
        }
         
    
}