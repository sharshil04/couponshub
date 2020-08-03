using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


public partial class Admin : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();

    

    

    protected void Page_Load(object sender, EventArgs e)
    {

       

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("select count(*) from mst_admin where auname='" + txtuname.Text + "' AND apwd='" + txtpwd.Text + "'", con);
        int cnt;
        cnt = Convert.ToInt32(cmd.ExecuteScalar());
        if (cnt == 1)
        {
            Response.Write("login succesful");
            Session["unm"] = txtuname.Text;

            Response.Redirect("admin_home.aspx?unm=" + txtuname.Text);
        }

        else
        {
            Response.Write("<script>alert('Login Fail')</script>");
        }
    }

    protected void txtid_TextChanged(object sender, EventArgs e)
    {

    }
}