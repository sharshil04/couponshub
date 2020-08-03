using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mainview : System.Web.UI.Page
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

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}