using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{

    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    OleDbDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        Bind1();
    }
    void Bind1()
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("select * from mst_cou where sid=" + Session["sid"].ToString() + "", con);
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "mst_cou");
        dgv1.DataSource = ds.Tables[0];
        //ddlcat.DataTextField = "cname";
        //      ddlcat.DataValueField = "cid";
        dgv1.DataBind();

    }

    protected void dgv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Response.Redirect("EditeCoupon.aspx");


        int Co_id = Convert.ToInt32(dgv1.DataKeys[e.RowIndex].Values[0]);
        TextBox txtnm = dgv1.Rows[e.RowIndex].FindControl("txtname") as TextBox;
        TextBox txtccode = dgv1.Rows[e.RowIndex].FindControl("txtccode") as TextBox;
        TextBox txtcdesc = dgv1.Rows[e.RowIndex].FindControl("txtcdesc") as TextBox;
        TextBox txtcexpir = dgv1.Rows[e.RowIndex].FindControl("txtcexpir") as TextBox;
        // DropDownList ddlccat = dgv1.Rows[e.RowIndex].FindControl("ddl2") as DropDownList;
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("update mst_cou SET co_title='" + txtnm.Text + "', co_code='" + txtccode.Text + "', co_desc='" + txtcdesc.Text + "', co_expiredate='" + txtcexpir.Text + "' where co_id=" + Co_id+"", con);

        da = new OleDbDataAdapter(cmd);
        Response.Write(cmd.CommandText);
        DataSet ds2 = new DataSet();
        da.Fill(ds2, "mst_cou");
        con.Close();
        dgv1.EditIndex = -1;
        this.Bind1();

        

    }

    protected void dgv1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        dgv1.EditIndex = e.NewEditIndex;
        this.Bind1();




    }

    protected void dgv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        int Co_id = Convert.ToInt32(dgv1.DataKeys[e.RowIndex].Values[0]);
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("delete from mst_cou where co_id=" + Co_id, con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "mst_cou");
        con.Close();
        this.Bind1();


    }

}