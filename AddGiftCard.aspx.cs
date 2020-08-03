using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class AddGiftCard : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        cmd = new OleDbCommand("insert into [tblgc] ([sname],[gamount],[qty],[desc],[expire],[gcode]) values('" + Session["nm"].ToString() + "','" + ddgcamount.SelectedValue.ToString() + "','" + txtqty.Text + "','" + txtdesc.Text + "','" + txtexp.Text + "','" + txtgcode.Text +"')", con);
        //Response.Write(cmd.CommandText.ToString());
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds,"tblgc");
        con.Close();

        Response.Write("<script>alert ('Add Succesfully');window.location.href='AddGiftCard.aspx';</script>");

        
       

    }
}