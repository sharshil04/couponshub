using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class AddCoupon : System.Web.UI.Page

{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    OleDbDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("select * from mst_cat", con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "mst_cat");
        ddlcat.DataSource = ds.Tables[0];
        ddlcat.DataTextField = "cname";
        ddlcat.DataValueField = "cid";
        ddlcat.DataBind();

    }
    protected void btninsert_Click(object sender, EventArgs e)
    {

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();

        OleDbCommand cmd1 = new OleDbCommand("select count(*) from mst_cou where co_title='" + txtctitle.Text + "' OR co_code='" + txtccode.Text + "'", con);
        int cnt1;
        cnt1 = Convert.ToInt32(cmd1.ExecuteScalar());

        if (cnt1 == 1)
        {
            Response.Write("<script>alert('Coupon Already Exists')</script>");
        }
        else
        {

            cmd = new OleDbCommand("insert into mst_cou (co_title,co_code,co_desc,co_expiredate,cid,sid) values('" + txtctitle.Text + "','" + txtccode.Text + "','" + txtcdesc.Text + "','" + txtcexpir.Text + "','" + ddlcat.SelectedValue.ToString() + "','" + Session["sid"].ToString() + "')", con);

            da = new OleDbDataAdapter(cmd);
            da.Fill(ds, "mst_cou");
            con.Close();
            lblmsg.Visible = true;

            Response.Write("<script>alert('Coupon Added');window.location.href = 'AddCoupon.aspx';</script>");
            
        }
    }

}