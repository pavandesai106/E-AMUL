using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Products : System.Web.UI.Page
{
    static string cnstr = System.Configuration.ConfigurationManager.AppSettings["connectionstring"];
    SqlConnection con = new SqlConnection(cnstr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select Category from product_detail", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ListItem li = new ListItem(dt.Rows[i]["Category"].ToString());
                    DropDownList1.Items.Add(li);
                }

            }
            DropDownList1.DataBind();
            RemoveDuplicateItems(DropDownList1);
            GridView1.DataBind();
        }
    }

       
         void RemoveDuplicateItems(DropDownList ddl)
    {
       
        for (int i = 0; i < ddl.Items.Count; i++)
        {
            ddl.SelectedIndex = i;
            string str = ddl.SelectedItem.ToString();
            for (int counter = i + 1; counter < ddl.Items.Count; counter++)
            {
                ddl.SelectedIndex = counter;
                string compareStr = ddl.SelectedItem.ToString();
                if (str == compareStr)
                {
                    ddl.Items.RemoveAt(counter);
                    counter = counter - 1;
                }

            }

        }
    //    DropDownList1.Items.Insert(0, new ListItem("select"));
        
               
    }
  
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
       // SelectCategory();
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button lnk = (Button)sender as Button;
        string id = lnk.CommandArgument.ToString();
        Session["product_id"] = id;
        Response.Redirect("ViewDetails.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}