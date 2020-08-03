using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
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
        cmd = new OleDbCommand("select * from mst_cust where uname='" + txtuName.Text + "' AND cpwd='" + txtpass.Text + "'", con);
        int cnt;
        OleDbDataReader reader = cmd.ExecuteReader();
        // cnt = Convert.ToInt32(cmd.ExecuteScalar());
        if (reader.Read())
        {
            //reader.Read();
            //  Response.Write("login succesful");
           

            Session["unm"] = txtuName.Text;

            
           
            Session["mail"] = reader["cemail"].ToString();
            Response.Redirect("home.aspx?test=" + txtuName.Text);

        }

        else
        {
            Response.Write("<script>alert('Login Fail')</script>");
        }

        //cnt = Convert.ToInt32(cmd.ExecuteScalar());
        //if (cnt == 1)
        //{
        //    Response.Write("login succesful");
        //    Session["unm"] = txtuName.Text;

        //    Response.Redirect("home.aspx?test=" + txtuName.Text);
            
        //}

        //else
        //{
        //    Response.Write("<script>alert('Login Fail')</script>");
        //}

    }
    

}