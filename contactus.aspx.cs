using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class contactus :  System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();


    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("insert into mst_Feedback (Nm,Mail,Subject,Feedback) values('"+txtName.Text+"','"+txtMail.Text+"','"+txtSubject.Text+"','"+txtMessage.Text+"')", con);
        
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "mst_Feedback");
        con.Close();

    }
}