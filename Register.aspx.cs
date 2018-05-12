using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    static string cnstr = System.Configuration.ConfigurationManager.AppSettings["connectionstring"];
    SqlConnection con = new SqlConnection(cnstr);

    protected void Page_Load(object sender, EventArgs e)
    {
        txtFirstName.Focus();
        int y = 1947;
        int p = DateTime.Now.Year;

        for (y = 1947; y <= p; y++)
        {
            ListItem li = new ListItem(y.ToString());
            dlyyyy.Items.Add(li);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gender = "";
        string year = dlyyyy.SelectedValue;
        string month = dlmm.SelectedValue;
        string day = dldd.SelectedValue;

        string dob = month + "/" + day + "/" + year;
        if (RadioButton1.Checked)
        {
            gender = "male";
        }
        else
        {
            gender = "female";
        }
        string regdate = DateTime.Now.ToShortDateString();
        try
        {

            con.Open();
            string instr = "insert into reg_detail (password,name,address,phoneno,gender,dob,user_id,question,answer) values ('" + txtPassword.Text + "','" + txtFirstName.Text + "','" + txtAddress.Text + "'," + txtContectNo.Text + ",'" + gender + "','" + dob + "','" + txtEmailAddress.Text + "','" + DropDownList4.SelectedValue + "','" + TextBox1.Text + "')";


            SqlCommand cmd = new SqlCommand(instr, con);
            int q = cmd.ExecuteNonQuery();

            if (q == 1)
            {
                Label22.Text = "record inserted succesfully";
            }


        }
        catch (Exception ex)
        {
            Label22.Text = ex.ToString();
        }
        finally
        {
            con.Close();
        }
        empty();
        Session["user"] = txtEmailAddress.Text;
        Response.Redirect("Default.aspx");

    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
        empty();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void dlyyyy_SelectedIndexChanged(object sender, EventArgs e)
    {
        dlmm.Items.Clear();
        int getyear = Int32.Parse(dlyyyy.SelectedValue);
        int y;
        dlmm.Items.Add("select");
        for (y = 1; y <= 12; y++)
        {
            ListItem li = new ListItem(y.ToString());
            dlmm.Items.Add(li);
        }
    }
    protected void dlmm_SelectedIndexChanged(object sender, EventArgs e)
    {
        dldd.Items.Clear();
        int getyear = Int32.Parse(dlyyyy.SelectedValue);
        int getmonth = Int32.Parse(dlmm.SelectedValue);
        int z;
        if (getyear % 4 == 0)
        {
            if (getmonth == 2)
            {
                z = 30;
            }
            else if ((getmonth == 4) || (getmonth == 6) || (getmonth == 9) || (getmonth == 11))
            {
                z = 31;
            }
            else
            {
                z = 32;
            }
        }
        else
        {

            if (getmonth == 2)
            {
                z = 29;
            }
            else if ((getmonth == 4) || (getmonth == 6) || (getmonth == 9) || (getmonth == 11))
            {
                z = 31;
            }
            else
            {
                z = 32;
            }

        }
        int y;
        dldd.Items.Add("select");
        for (y = 1; y < z; y++)
        {
            ListItem li = new ListItem(y.ToString());
            dldd.Items.Add(li);
        }
    }
    protected void dldd_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    public void empty()
    {
        txtFirstName.Text = "";

        txtPassword.Text = "";
        txtAddress.Text = "";
        txtContectNo.Text = "";
        RadioButton1.Checked = true;
        txtEmailAddress.Text = "";

        txtConformPassword.Text = "";

    }
}