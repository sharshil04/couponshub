using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class GiftCardHomeaspx : System.Web.UI.Page

{

    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();

    int x, y, z;


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


            if (!IsPostBack)
            {
                string snm = Request.QueryString["name"];
                string zero = "0";

                con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
                con.Open();
                cmd = new OleDbCommand("select * from tblgc where sname='" + snm + "' AND qty > '" + zero.ToString() + "'", con);
                da = new OleDbDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "tblgc");
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
                con.Close();

                
            }
        }
        catch(Exception ex)
        {
            Response.Redirect("error.html");
        }

    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {




            if (e.CommandName == "Select")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                //Reference the GridView Row.
                GridViewRow row = GridView1.Rows[rowIndex];
                string id = (row.FindControl("gid") as Label).Text;
                int i = int.Parse(id);
                //Fetch value of Name.
                string name = (row.FindControl("sname") as Label).Text;

                String cname = Session["unm"].ToString();

                //Fetch value of Country
                string Amount = (row.FindControl("gamount") as Label).Text;

                String mail = Session["mail"].ToString();

                String qty = (row.FindControl("qty") as Label).Text;




                x = int.Parse(qty);
                z = x - 1;
                String q = z.ToString();
                //Response.Write(x);

                con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
                con.Open();
                OleDbCommand cmd1 = new OleDbCommand("update tblgc set qty='" + q + "'  where gid=" + i + "", con);
                da = new OleDbDataAdapter(cmd1);
                DataSet ds = new DataSet();
                da.Fill(ds, "tblgc");
                con.Close();


                con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
                con.Open();
                OleDbCommand cmd2 = new OleDbCommand("insert into tbltran (sname,cname,cemail,gid,gamount) values ('" + name + "','" + cname + "','" + mail + "'," + i + ",'" + Amount + "')", con);
                da = new OleDbDataAdapter(cmd2);
                DataSet ds1 = new DataSet();
                da.Fill(ds1, "tbltran");
                con.Close();

                string tx = "  Thank You For Your Order";


                 ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' "+tx+" \\nBrand: " + name + "\\nAmount :"+Amount+"\\nYour Name: " + cname + "\\nEmail: "+ mail + "');window.location.href = 'Bought.aspx';", true);
                
            }
        }
        catch(Exception ex)
        {
            Response.Redirect("error.aspx");
        }
    }
}