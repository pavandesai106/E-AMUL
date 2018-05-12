using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ChangePassword : System.Web.UI.Page
{
    static string constr = System.Configuration.ConfigurationManager.AppSettings["connectionstring"];
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select password from reg_detail where user_id='" + Session["user"] + "'", con);
            string pwd = cmd.ExecuteScalar().ToString();
           if(pwd.Equals(txtoldpassword.Text))
                {
                    SqlCommand cmd1 = new SqlCommand("update reg_detail set password='" + txtnewpassword.Text + "' where user_id='" + Session["user"] + "'", con);
                    int count = cmd1.ExecuteNonQuery();
                    if(count==1)
                    {
                        Label6.Text="password updated successfully";
                    }
                    else
                    {
                        Label6.Text="error";
                    }

                }
           else
           {
            Label6.Text="passwords are not matching";
           }
           
            txtconfirm.Text = "";
            txtnewpassword.Text = "";
            txtoldpassword.Text = "";

        }
        catch (Exception ex)
        { }
        finally
        {
            con.Close();
        }
    }

}