using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Windows.Forms;

public partial class home : System.Web.UI.Page
{

    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        //lblwc.Text = "Wel-Come  "+ Session["unm"].ToString();


        if (Page.IsPostBack)
        {
            if (Session["unm"]== null)
            {
                
               Response.Write("<script>alert('Must Be Login First');window.location.href='login.aspx';</script>");
                
            }

        }
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





    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "imgselect")
        {

            Response.Redirect("mainview.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}