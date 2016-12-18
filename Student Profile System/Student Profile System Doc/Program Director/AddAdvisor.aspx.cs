using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program_Director_AddAdvisor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtuname.Text = "700";
        }

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    string pwd;
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            pwd = RandomPassword(10);
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into AddAdvisor values( '" + txtfname.Text + "','" + txtlname.Text + "','" + txtuname.Text + "','" + pwd + "','" + txtmob.Text + "','" + txtemail.Text + "','" + txtadd.Text + "','Active')";
            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                sendMail(txtemail.Text);
                Labelresult.Text = "advisor registerd succesfully";
                txtfname.Text = "";
                txtlname.Text = "";
                txtuname.Text = "";
                txtmob.Text = "";
                txtemail.Text = "";
                txtadd.Text = "";
                txtuname.Focus();
                txtuname.BorderColor = Color.White;
            }
            else
                Labelresult.Text = "registration failed";
        }
        catch (Exception ex)
        {
            Labelresult.Text = "Faculty Id Already Existed";
            txtuname.Focus();
            txtuname.BorderColor = Color.Red;
        }
    }
    public string RandomPassword(int pwdlen)
    {
        string _ac = "123456789qwertyupasdfghjklzxcvbnmQWERTYUPASDFGHJKLZXCVBNM";
        Random rand = new Random();
        char[] c = new char[pwdlen];
        int acCount = _ac.Length;
        for (int i = 0; i < pwdlen; i++)
        {
            c[i] = _ac[(int)(acCount * rand.NextDouble())];
        }
        return new string(c);
    }
    private void sendMail(string ucmoMail)
    {
        MailMessage sendmail = new MailMessage();
        sendmail.From = new MailAddress("rteja0828@gmail.com");
        sendmail.To.Add(ucmoMail);
        sendmail.Body = "Hi , You are successfully assigned as advisor"  + "<br/><br/>" + "FirstName: " + txtfname.Text + "<br /><br/>" + "LastName: " + txtlname.Text + "<br /><br/>" + "UserName: " + txtuname.Text + "<br/><br/>" + "Password: " + pwd + "<br/><br/>" + "EmailId: " + txtemail.Text + "<br/><br/>" + "Phone Number: " + txtmob.Text + "<br/><br/>" + "Advisor Website: " + "http://localhost:50899/StudentProfileSystem/Advisor.aspx";
        sendmail.Subject = "Faculty Enrollment";
        sendmail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("rteja0828@gmail.com", "9010202724");
        smtp.EnableSsl = true;
        smtp.Port = 587;
        smtp.Send(sendmail);
    }
}