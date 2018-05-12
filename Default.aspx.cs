using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    static string cnstr = System.Configuration.ConfigurationManager.AppSettings["connectionstring"];
    SqlConnection con = new SqlConnection(cnstr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           bindNewsAndEvents();
            
        }
    }


    void bindNewsAndEvents()
    {
       // string str = "SELECT TOP 5 NewsNEvent.NewsNEventId, NewsNEvent.NewsEventsTitle, NewsNEvent.Type FROM NewsNEvent WHERE (((NewsNEvent.DeleteFlag) Like No) AND ((NewsNEvent.Type) Like 0)) ORDER BY NewsNEvent.NewsNEventId DESC";

        string str = "SELECT TOP 5 NewsNEvent.NewsNEventId, NewsNEvent.NewsEventsTitle, NewsNEvent.Type FROM NewsNEvent WHERE ((NewsNEvent.Type) Like 0) ORDER BY NewsNEvent.NewsNEventId DESC";
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


        string str1 = "SELECT TOP 5 NewsNEvent.NewsNEventId, NewsNEvent.NewsEventsTitle, NewsNEvent.Type FROM NewsNEvent WHERE ((NewsNEvent.Type) Like 1) ORDER BY NewsNEvent.NewsNEventId DESC";

        SqlDataAdapter da1 = new SqlDataAdapter(str1, con);
        DataSet ds1 = new DataSet();
        da.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            grdEvents.DataSource = ds1;
            grdEvents.DataBind();
        }
        else
        {
            grdEvents.DataSource = null;
            grdEvents.DataBind();
        }


    }
    protected void lnkNewsTitle_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        Response.Redirect("LatestNewsNEvents.aspx?NeId=" + lnk.CommandArgument);
    }
}
