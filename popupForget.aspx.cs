using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Drawing;


public partial class popupForget : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();


    protected void Page_Load(object sender, EventArgs e)
    {

       
        
    }
    protected void btnGetOtp_Click(object sender, EventArgs e)
    {

        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        OleDbCommand cmd= new OleDbCommand("select count (*) from mst_cust where cemail = '"+txtEmail.Text+"'",con);
        int cnt1;
        cnt1 = Convert.ToInt32(cmd.ExecuteScalar());

        if (cnt1 == 1)
        {
            Random random = new Random();
            int otp = random.Next(100000, 999999);
            //Creating Otp Session 
            string name = otp.ToString();
            Session["otp"] = name;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("rentyourskills@gmail.com");
            msg.To.Add(txtEmail.Text);
            msg.Subject = "Random Password for your Account";
            msg.Body = "Your Random password is:" + name;
            msg.IsBodyHtml = true;

            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "rentyourskills@gmail.com"; //Your Email ID  
            ntwd.Password = "skills@123"; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);
            Response.Write("<script>alert('Mail Sent')</script>");



            verification.Visible = true;
            regMob.Visible = false;
        }
        else
        {
            Response.Write("<script>alert('Please Enter Registerd Number')</script>");
        }

        
       
    }
    protected void btnVerify_Click(object sender, EventArgs e)
    {
       if (txtVerification.Text == Session["otp"].ToString())
                {
            Response.Write("<script>alert('Verified')</script>");
            verification.Visible = false;
            regMob.Visible = false;
            NewPwd.Visible = true;

        }
        else
        {
            Response.Write("<script>alert('Not Verified')</script>");
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/pro_pm-20190718T150056Z-001/pro_pm/dbtest.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand("UPDATE mst_cust SET cpwd = '" + txtNewPwd.Text + "'WHERE cemail='" + txtEmail.Text + "'", con);
        da = new OleDbDataAdapter(cmd);
        da.Fill(ds, "mst_store");
        con.Close();
        lblupdated.Visible = true;

        regMob.Visible = false;
        verification.Visible = false;
        NewPwd.Visible = false;

    }
}