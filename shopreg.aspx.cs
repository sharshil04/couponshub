using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;



public partial class shopreg : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();



    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtnum_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();

        OleDbCommand cmd1 = new OleDbCommand("select count(*) from mst_store where sname='" +txtsnm.Text+"' OR  url='"+txturl.Text+"'",con);
        int cnt1;
        cnt1 = Convert.ToInt32(cmd1.ExecuteScalar());

        if (cnt1 == 1)
        {
            Response.Write("<script>alert('Store Already Registered')</script>");
        }

        else
        {

            string strname = fu.FileName;
            fu.PostedFile.SaveAs(Server.MapPath("~/log/") + strname);
            string image = "~/log/" + strname.ToString();
            cmd = new OleDbCommand("insert into mst_store (sname,semail,sphone,spwd,logo,url) values('" + txtsnm.Text + "','" + txtSEmail.Text + "','" +txtphone.Text+"','" + txtspass.Text + "','" + image + "','" + txturl.Text + "')", con);
            da = new OleDbDataAdapter(cmd);
            da.Fill(ds, "mst_store");
            con.Close();
            txtsnm.Text = "";
            txtSEmail.Text = "";
            txtphone.Text = "";
            txturl.Text = "";
            txtspass.Text = "";
            txtscpass.Text = "";
        }



    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {

    }
}