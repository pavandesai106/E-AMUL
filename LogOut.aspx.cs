using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session.Abandon();
        Response.ExpiresAbsolute = DateTime.Now.AddMonths(-1);
        Response.Cache.SetNoStore();
        string nextpage = "Default.aspx";
        Response.Write("<script language=javascript>");
        Response.Write("{");
        Response.Write("var Backlen=history.length;");
        Response.Write("history.go(-Backlen);");
        Response.Write("window.location.href='" + nextpage + "';");
        Response.Write("}");
        Response.Write("</script");
    }
}