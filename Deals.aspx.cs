using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class Deals : System.Web.UI.Page


{

    OleDbConnection con;
    OleDbCommand cmd,cmd1;
    OleDbDataAdapter da,da1;
    DataSet ds = new DataSet();
    OleDbDataReader dr;


    protected void Page_Load(object sender, EventArgs e)
    {
        string d = "50";
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("select mst_store.sname,mst_cou.co_title,mst_cou.discount,mst_cou.co_code,mst_cou.co_expiredate from mst_cou INNER JOIN mst_store ON mst_store.sid=mst_cou.sid where discount >='"+d.ToString()+"'", con);
        cmd1 = new OleDbCommand("select * from mst_store",con);

        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "mst_cou");
       
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();

    }
}