using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class cat_edite : System.Web.UI.Page
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
        cmd = new OleDbCommand("select * from mst_cat", con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "mst_cat");
        dgv1.DataSource = ds.Tables[0];
        dgv1.DataBind();

    }



    protected void dgv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Cid = Convert.ToInt32(dgv1.DataKeys[e.RowIndex].Values[0]);
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("delete from mst_cat where cid=" + Cid, con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "mst_cat");
        con.Close();
        this.bindgrid();
    }

    protected void dgv1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        dgv1.EditIndex = e.NewEditIndex;
        this.bindgrid();


    }

    protected void dgv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Cid = Convert.ToInt32(dgv1.DataKeys[e.RowIndex].Values[0]);
        TextBox txtnm = dgv1.Rows[e.RowIndex].FindControl("txtname") as TextBox;
        TextBox txtcdes = dgv1.Rows[e.RowIndex].FindControl("txtcdesc") as TextBox;
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("update mst_cat SET cname='" + txtnm.Text + "', cdesc='" + txtcdes.Text + "' where cid=" + Cid, con);

        da = new OleDbDataAdapter(cmd);
       
        DataSet ds2 = new DataSet();
        da.Fill(ds2, "mst_cat");
        con.Close();
        dgv1.EditIndex = -1;
        this.bindgrid();

    }
    protected void dgv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        dgv1.EditIndex = -1;
        this.bindgrid();
    }
}