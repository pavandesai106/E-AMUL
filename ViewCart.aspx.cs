using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewCart : System.Web.UI.Page
{
    static string cnstr = System.Configuration.ConfigurationManager.AppSettings["connectionstring"];
    SqlConnection con = new SqlConnection(cnstr);
    protected void Page_Load(object sender, EventArgs e)
    {
        gettotal();
        
    }
    public void gettotal()
    {
        int total = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            int price = Convert.ToInt32(GridView1.Rows[i].Cells[5].Text);
            int quant = Convert.ToInt32(GridView1.Rows[i].Cells[6].Text);
            int ind = price * quant;
            total = total + ind;

        }
        Label3.Text = total.ToString() + ".00 rs";
        Session["total"] = total.ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Products.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button lnk = (Button)sender as Button;
       
        Label2.Text = lnk.CommandArgument.ToString();
        Label1.Visible = true;
        TextBox1.Visible = true;
        Button2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {   
        con.Open();
        SqlCommand cmd = new SqlCommand("update order_cdetail set Quantity='" + TextBox1.Text + "' where id='" + Label2.Text + "'", con);
        cmd.ExecuteNonQuery();
        GridView1.DataBind();
        gettotal();
        Response.Redirect("ViewCart.aspx");
        con.Close();
        Label1.Visible = false;
        TextBox1.Visible = false;
        Button2.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
      
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string id = Label3.Text;
        con.Open();
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            int price = (Convert.ToInt32(GridView1.Rows[i].Cells[5].Text)) * (Convert.ToInt32(GridView1.Rows[i].Cells[6].Text));
            SqlCommand cmd = new SqlCommand("update order_detail set status='confirm',total_price='" + id + "' where order_id='" + GridView1.Rows[i].Cells[1].Text + "'", con);
            SqlCommand cmd1 = new SqlCommand("update order_cdetail set Price='" + price + "' where id='" + GridView1.Rows[i].Cells[0].Text + "'", con);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();

        }
        con.Close();
        Response.Redirect("ViewBill.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string id = btn.CommandArgument.ToString();
        con.Open();
        int id1 = Convert.ToInt32(btn.CommandArgument.ToString());
        string get = "delete from order_cdetail where id='"+id1+"'";
        SqlCommand cmd = new SqlCommand(get,con);
        cmd.ExecuteNonQuery();
        GridView1.DataBind();
        Response.Redirect("ViewCart.aspx");

        con.Close();
    }
}