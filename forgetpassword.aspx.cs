using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class forgetpassword : System.Web.UI.Page
{
    static string constr = System.Configuration.ConfigurationManager.AppSettings["connectionstring"];
    SqlConnection con = new SqlConnection(constr);
    string ques, ans, pwd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
       // string q, a;
        SqlCommand cmd = new SqlCommand("select question,answer from reg_detail where user_id='" + txtuserid.Text + "'",con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                ques = dr["question"].ToString();
               
            }
        }
        dr.Close();
        con.Close();
        question.Text = ques;

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        string selectqry = "select password,answer from reg_detail where user_id='" + txtuserid.Text + "'";
        SqlCommand cmd = new SqlCommand(selectqry, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                ans = dr["answer"].ToString();
                pwd = dr["password"].ToString();
            }
        }
        dr.Close();
        con.Close();
        if (ans == txtanswer.Text)
        {
            password.Text = pwd;
        }
        else
        {
            password.Text = "enter correct answer";
        }
    }
}