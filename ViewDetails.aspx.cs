using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewDetails : System.Web.UI.Page
{
    
    static string cnstr=System.Configuration.ConfigurationManager.AppSettings["connectionstring"];
    SqlConnection con=new SqlConnection(cnstr);
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Session["user"] = "ram@yahoo.com";
        if (!IsPostBack)
        {
            if (Session["user"] == null)
            {
                Button1.Enabled = false;

            }
            else
            {
                Button1.Enabled = true;

            }
        }
        getdata();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["orderid"] == null)
        {
            SqlCommand cmd = new SqlCommand("Insert into order_detail(user_id,status) values('" + Session["user"] + "','ordered')", con);

            //string query1 = "Insert into order_cdetail()";
            con.Open();
            int count = cmd.ExecuteNonQuery();
            string selquerylast = "SELECT MAX(order_id) AS order_id FROM order_detail";
            SqlCommand cmd1 = new SqlCommand(selquerylast, con);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                Session["orderid"] = dr["order_id"].ToString();
            }
            dr.Close();
            SqlCommand cmd2 = new SqlCommand("insert into order_cdetail(main_order_id,Pid,Quantity) values ('" + Session["orderid"] + "','" + Session["product_id"] + "','1')", con);
            int count2 = cmd2.ExecuteNonQuery();

            con.Close();
            con.Open();
            SqlCommand cmdup = new SqlCommand("update reg_detail set order_id='" + Session["orderid"] + "' where user_id='" + Session["user"] + "'", con);
            int count1 = cmdup.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            con.Open();
            string selquerylast = "SELECT MAX(order_id) AS order_id FROM order_detail";
            SqlCommand cmd1 = new SqlCommand(selquerylast, con);

            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                for (int i = 0; i < dt1.Rows.Count; i++)
                {
                    Session["orderid"] = dt1.Rows[i]["order_id"].ToString();


                }
            }


            SqlCommand cmd6 = new SqlCommand("select * from order_cdetail where main_order_id='" + Session["orderid"] + "' and Pid='" + Session["product_id"] + "'", con);
            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(cmd6);
            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {

                SqlCommand cmd2 = new SqlCommand("insert into order_cdetail(main_order_id,Pid,Quantity) values ('" + Session["orderid"] + "','" + Session["product_id"] + "','1')", con);
                int count1 = cmd2.ExecuteNonQuery();
            }
            else if (dt.Rows.Count > 0)
            {
                int countprice = Convert.ToInt32(dt.Rows[0]["Quantity"].ToString()) + 1;

                SqlCommand upd = new SqlCommand("update order_cdetail set Quantity='" + countprice + "' where id='" + dt.Rows[0]["id"] + "'", con);
                int c = upd.ExecuteNonQuery();
            }
            else
            {


            }
            dt.Clear();



            con.Close();

        }
        Response.Redirect("ViewCart.aspx");
    }
    protected void getdata()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from product_detail where Pid='" + Session["product_id"] + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            lname.Text = dr["Pname"].ToString();
            lcategory.Text = dr["Category"].ToString();
            lcode.Text = dr["Pcode"].ToString();
            lfat.Text = dr["Total_Fat"].ToString();
            lenergy.Text = dr["Energy"].ToString();
            lweight.Text = dr["Weight"].ToString();
            TextBox1.Text = dr["Description"].ToString();
            lprice.Text = dr["Price"].ToString();
            
            Image1.ImageUrl = dr["Image"].ToString();
            Label12.Visible = true;
            Label13.Visible = true;

        }
        con.Close();
    }
}