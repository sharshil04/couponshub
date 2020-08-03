using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack)
        {
            if (Session["unm"] == null)
            {

                Response.Write("<script>alert('Must Be Login First');window.location.href='login.aspx';</script>");
            }

        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        
    }

    protected void btnout_Click(object sender, EventArgs e)
    {
        Session["unm"] = " ";
        Response.Redirect("login.aspx");
    }
}
