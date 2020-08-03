using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class spro_update : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
            con.Open();
            cmd = new OleDbCommand("select * from mst_store where sid=" + Session["sid"].ToString() + "", con);
            //int cnt;
            OleDbDataReader reader = cmd.ExecuteReader();
            // cnt = Convert.ToInt32(cmd.ExecuteScalar());
            if (reader.Read())
            {
                //reader.Read();
                //  Response.Write("login succesful");
                imgbtn.ImageUrl = reader["logo"].ToString();
                txtsnm.Text = reader["sname"].ToString();
                txtsemail.Text = reader["semail"].ToString();
                txtspwd.Text = reader["spwd"].ToString();
                txturl.Text = reader["url"].ToString();

            }


        }


    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("update mst_store set  sname='"+txtsnm.Text+"',semail='"+txtsemail.Text+"',spwd='"+txtspwd.Text+ "',url='"+txturl.Text+ "'  where sid=" + Session["sid"].ToString() + "", con);
        da = new OleDbDataAdapter(cmd);
        
        DataSet ds2 = new DataSet();
        da.Fill(ds2, "mst_store");
        con.Close();
        Response.Write("<script>alert('Updated')</script>");



    }

    protected void Btnclear_Click(object sender, EventArgs e)
    {
        Response.Redirect("store_home.aspx");
    }
}