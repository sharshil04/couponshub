using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class store_profile : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("spro_update.aspx");

    }

    protected void Btnclear_Click(object sender, EventArgs e)
    {
        Response.Redirect("store_home.aspx");
    }
}