using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class main_admin : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    OleDbDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
    }

   

    protected void btnadd_Click(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();

        OleDbCommand cmd1 = new OleDbCommand("select count(*) from mst_cat where cname='"+txtcat.Text+"'", con);
        int cnt1;
        cnt1 = Convert.ToInt32(cmd1.ExecuteScalar());

        if (cnt1 == 1)
        {
            
            Response.Write("<script>alert('Already Exist');window.location.href='admin_cat.aspx';</script>");
           

        }

        else
        {

            cmd = new OleDbCommand("insert into mst_cat (cname,cdesc) values('" + txtcat.Text + "','" + txtcdec.Text + "')", con);
            da = new OleDbDataAdapter(cmd);
            da.Fill(ds, "mst_cat");
            con.Close();
            Response.Redirect("admin_cat.aspx");
        }
    }
    
    

}