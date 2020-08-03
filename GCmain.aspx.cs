using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GCmain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged3(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "imgselect")
        {

            Response.Redirect("GiftCardHome.aspx?name=" + e.CommandArgument.ToString());
        }
    }
}