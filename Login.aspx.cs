using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    static string cnstr = System.Configuration.ConfigurationManager.AppSettings["connectionstring"];
    SqlConnection con = new SqlConnection(cnstr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from reg_detail where user_id='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["user"] = TextBox1.Text;
                    Session["name"] = dr["name"].ToString();
                    if (TextBox1.Text == "admin@gmail.com" && TextBox2.Text == "admin")
                    {
                        Response.Redirect("ManageUsers.aspx");
                    }
                    Response.Redirect("Default.aspx");
                }
            }
            else
            {
                Label4.Text = "invalid username and password";
            }
            dr.Close();
        }

        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
        finally
        {
            con.Close();
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgetpassword.aspx");
    }
}