using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class admin_home : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lblhello.Text = "Welcome " + Session["unm"] + ", How May I Help You?";

        }

    }

    protected void rblhome_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (rblhome.SelectedIndex == 0)
        {
            Response.Redirect("admin_cat.aspx");
        }
        else if (rblhome.SelectedIndex==1)
        {
            Response.Redirect("user_data.aspx");
        }
        {
            Response.Redirect("partner_data.aspx");
        }

    }
}