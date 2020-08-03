using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class store_login : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd,cmd1;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    

    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("select * from mst_store where semail='" + txtuName.Text + "' AND spwd='" + txtpass.Text + "'", con);
        //int cnt;
        OleDbDataReader reader = cmd.ExecuteReader();
       // cnt = Convert.ToInt32(cmd.ExecuteScalar());
        if (reader.Read())
        {
            //reader.Read();
            //  Response.Write("login succesful");
            lblid.Text = reader["sid"].ToString();
            Session["sid"] = lblid.Text;
            Session["unm"] = txtuName.Text;
            Session["nm"] = reader["sname"].ToString();
            Response.Redirect("store_home.aspx?sid=" +lblid.Text);
        }

        else
        {
            Response.Write("<script>alert('Login Fail')</script>");
        }

    }

   
}