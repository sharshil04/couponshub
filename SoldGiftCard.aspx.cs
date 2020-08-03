using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class SoldGiftCard : System.Web.UI.Page
{

    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
            con.Open();
            cmd = new OleDbCommand("select * from tbltran where sname='" + Session["nm"].ToString() + "'", con);
            da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbltran");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            con.Close();

        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
}