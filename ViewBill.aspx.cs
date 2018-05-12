using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewBill : System.Web.UI.Page
{
    static string cnstr = System.Configuration.ConfigurationManager.AppSettings["connectionstring"];
    SqlConnection con = new SqlConnection(cnstr);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["user"].ToString();
        Label4.Text = Session["orderid"].ToString();
        con.Open();
        //Response.Write("connection opened successfully");
        SqlCommand cmd = new SqlCommand("select * from reg_detail where user_id='" + Session["user"].ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                TextBox1.Text = dr["address"].ToString();
            }
        }
        con.Close();
        string t1 = Session["total"].ToString();
        //double discount = Convert.ToDouble(t1) * 0.05;
        double total = Convert.ToDouble(t1);
        //Label14.Text = discount.ToString();
        Label18.Text = total.ToString();
        string id = Session["orderid"].ToString();
        int i = Convert.ToInt32(id);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update order_detail set total_price='" + Label18.Text + "' where order_id='" + i + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Write(@"<script language='javascript'>alert('Order confirmed. Check out your Bill\n.');</script>");  
    }
}