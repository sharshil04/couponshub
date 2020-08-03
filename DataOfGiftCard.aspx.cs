using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class DataOfGiftCard : System.Web.UI.Page
{

    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    OleDbDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            this.bindgrid();
        }
    }

    void bindgrid()
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("select * from tblgc where sname='" + Session["nm"].ToString() + "'", con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "tblgc");
        dgv1.DataSource = ds.Tables[0];
        dgv1.DataBind();

    }

    protected void dgv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Cid = Convert.ToInt32(dgv1.DataKeys[e.RowIndex].Values[0]);
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("delete from tblgc where gid=" + Cid, con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "tblgc");
        con.Close();
        this.bindgrid();
    }
}