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

    protected void btnreg_Click(object sender, EventArgs e)
    {

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();

        OleDbCommand cmd1 = new OleDbCommand("select count(*) from mst_cust where uname='"+txtunm.Text+"'", con);
        int cnt1;
        cnt1 = Convert.ToInt32(cmd1.ExecuteScalar());
        if (cnt1 == 1)
        {

            Response.Write("<script>alert('User Name Not Avaliable')</script>");
        }

        else
        {
           

            OleDbCommand cmd2 = new OleDbCommand("select count(*) from mst_cust where cemail = '" + txtEmail.Text + "'", con);
            int cnt2;
            cnt2 = Convert.ToInt32(cmd2.ExecuteScalar());
            if (cnt2 == 1)
            {

                Response.Write("<script>alert('Email  Already Registered')</script>");
            }

            else
            {
                cmd = new OleDbCommand("insert into mst_cust (cname,uname,cpwd,cemail,cmno,gender) values('" + txtName.Text + "','" + txtunm.Text + "','" + txtpass.Text + "','" + txtEmail.Text + "','" + txtnum.Text + "','" + ddl.SelectedValue.ToString() + "')", con);

                da = new OleDbDataAdapter(cmd);
                da.Fill(ds, "mst_cust");
                con.Close();
                Response.Redirect("login.aspx");
            }
        }

    }
}