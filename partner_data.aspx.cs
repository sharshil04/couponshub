using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class partner_data : System.Web.UI.Page
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
            this.bindgrid2();

        }
    }
    void bindgrid2()
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("select * from mst_store", con);
        da = new OleDbDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        da.Fill(ds1, "mst_store");
        dgvpartner.DataSource = ds1.Tables[0];
        dgvpartner.DataBind();


    }
     protected void dgvpartner_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        int Sid = Convert.ToInt32(dgvpartner.DataKeys[e.RowIndex].Values[0]);
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("delete from mst_store where sid=" + Sid, con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "mst_store");
        con.Close();
        this.bindgrid2();

    }

    protected void dgvpartner_RowEditing(object sender, GridViewEditEventArgs e)
    {
        dgvpartner.EditIndex = e.NewEditIndex;
        this.bindgrid2();




    }

    protected void dgvpartner_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int Sid = Convert.ToInt32(dgvpartner.DataKeys[e.RowIndex].Values[0]);
        TextBox txtnm = dgvpartner.Rows[e.RowIndex].FindControl("txtname") as TextBox;
        TextBox txtsmail = dgvpartner.Rows[e.RowIndex].FindControl("txtsmail") as TextBox;
        TextBox txtslogo = dgvpartner.Rows[e.RowIndex].FindControl("txtsurl") as TextBox;
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("update mst_store SET sname='" + txtnm.Text + "', semail='" + txtsmail.Text + "', url='" + txtslogo.Text + "' where sid=" + Sid, con);

        da = new OleDbDataAdapter(cmd);
        Response.Write(cmd.CommandText);
        DataSet ds2 = new DataSet();
        da.Fill(ds2, "mst_store");
        con.Close();
        dgvpartner.EditIndex = -1;
        this.bindgrid2();

    }
    protected void dgvpartner_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        dgvpartner.EditIndex = -1;
        this.bindgrid2();
    }
}