using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ManageProducts : System.Web.UI.Page
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
            if (FileUpload1.HasFile)
            {
                string fileMn = FileUpload1.PostedFile.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/products/" + fileMn));
                string img = "~/products/" + fileMn;
                string qry = "insert into product_detail(Category,Pname,Pcode,Price,Quantity,Image,Description,Total_Fat,Energy,Weight)values('" + txtcat.Text + "','" + txtnm.Text + "','" + txtpcode.Text + "','" + txtprice.Text + "','" + txtqnty.Text + "','" + img + "','" + txtdesc.Text + "','" + txtfat.Text + "','" + txtenergy.Text + "','" + txtweight.Text + "')";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                Label9.Text = "data has been inserted successfully";
                con.Close();
            }
            else
            {
                Label9.Text = "please select image..";
            }
        }
        catch(Exception ex)
        {
            Label9.Text = "please enter all fields value...";
        }

        txtcat.Text = "";
        txtnm.Text = "";
        txtpcode.Text = "";
        txtprice.Text = "";
        txtqnty.Text = "";
        txtdesc.Text = "";
        txtfat.Text = "";
        txtenergy.Text = "";
        txtweight.Text = "";
        SqlCommand cmd1 = new SqlCommand("select * from product_detail", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        //GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}