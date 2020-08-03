using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class user_data : System.Web.UI.Page
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
            this.bindgrid1();

        }
    }
    void bindgrid1()
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("select * from mst_cust", con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "mst_cust");
        dgvuser.DataSource = ds.Tables[0];
        dgvuser.DataBind();


    }

    protected void dgvuser_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        int Cid = Convert.ToInt32(dgvuser.DataKeys[e.RowIndex].Values[0]);
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("delete from mst_cust where cid=" + Cid, con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "mst_cust");
        con.Close();
        this.bindgrid1();

    }

    protected void dgvuser_RowEditing(object sender, GridViewEditEventArgs e)
    {
        dgvuser.EditIndex = e.NewEditIndex;
        this.bindgrid1();


    }

    protected void dgvuser_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Cid = Convert.ToInt32(dgvuser.DataKeys[e.RowIndex].Values[0]);
        TextBox txtnm = dgvuser.Rows[e.RowIndex].FindControl("txtname") as TextBox;
        TextBox txtunm = dgvuser.Rows[e.RowIndex].FindControl("txtcunm") as TextBox;
        TextBox txtcmail = dgvuser.Rows[e.RowIndex].FindControl("txtcmail") as TextBox;
        TextBox txtcmno = dgvuser.Rows[e.RowIndex].FindControl("txtcmno") as TextBox;
        TextBox txtcgen = dgvuser.Rows[e.RowIndex].FindControl("txtcgen") as TextBox;
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("update mst_cust SET cname='" + txtnm.Text + "', uname='" + txtunm.Text + "', cemail='" + txtcmail.Text + "', cmno='" + txtcmno.Text + "', gender='" + txtcgen.Text + "' where cid=" + Cid, con);

        da = new OleDbDataAdapter(cmd);
        Response.Write(cmd.CommandText);
        DataSet ds2 = new DataSet();
        da.Fill(ds2, "mst_cust");
        con.Close();
        dgvuser.EditIndex = -1;
        this.bindgrid1();



    }
    protected void dgvuser_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        dgvuser.EditIndex = -1;
        this.bindgrid1();
    }
}