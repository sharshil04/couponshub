using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPagelogin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["unm"] != null)
        {
            btnout.Visible = true;

        }

    }

    protected void btnout_Click(object sender, EventArgs e)
    {
        Session["unm"] = " ";
        Response.Redirect("login.aspx");
    }
}
