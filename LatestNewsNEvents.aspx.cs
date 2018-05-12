using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LatestNewsNEvents : System.Web.UI.Page
{
    static string constr = System.Configuration.ConfigurationManager.AppSettings["connectionstring"];
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
        if (!IsPostBack)
        {
            bindNewsAndEvents();
        }
    }
    protected void lnkNewsTitle_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        Response.Redirect("LatestNewsNEvents.aspx?NeId=" + lnk.CommandArgument);
    }
    void bindNewsAndEvents()
    {
        string str = "SELECT TOP 5 NewsNEvent.NewsNEventId, NewsNEvent.NewsEventsTitle, NewsNEvent.Type FROM NewsNEvent ORDER BY NewsNEvent.NewsNEventId DESC";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            grdNews.DataSource = ds;
            grdNews.DataBind();
        }
        else
        {
            grdNews.DataSource = null;
            grdNews.DataBind();
        }




    }

    void BindData()
    {
        if (Request.QueryString["NeId"] != null)
        {
            string str = "select * from NewsNEvent where NewsNEventId like " + Request.QueryString["NeId"].ToString();
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                lblTitle.Text = "Latest News";

            }
            lblNETitle.Text = ds.Tables[0].Rows[0]["NewsEventsTitle"].ToString();
            lblNewsEvents.Text = ds.Tables[0].Rows[0]["NewsNEvent"].ToString();
        }
    }

}