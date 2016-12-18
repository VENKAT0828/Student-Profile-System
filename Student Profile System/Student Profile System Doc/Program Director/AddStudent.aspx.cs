using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program_Director_AddStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtUname.Text = "700";
            BindConcetration();
        }
    }
    private void BindConcetration()
    {
        con.Close();
        con.Open();
        ddlConcentration.Items.Clear();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select ConcetrationName from DirectorConcentration";
        cmd.Connection = con;
        ddlConcentration.Items.Insert(0, "---Select---");
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            ddlConcentration.Items.Add(sdr[0].ToString());
        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    string pwd, GenerateMail;
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            pwd = RandomPassword(10);
            string s = txtFirstName.Text;
            string s1 = s[0].ToString();

            string str = txtLastName.Text;
            string str1 = str[0].ToString();

            string a = Convert.ToInt64(txtUname.Text).ToString();
            String m = a.Substring(a.Length - 3);

            GenerateMail = s1 + "x" + str1 + "x" + m + "@ucmo.edu";
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into StudentDetails values( '" + txtFirstName.Text + "','" + txtLastName.Text + "'," + txtUname.Text + ",'" + pwd + "','" + txtMailingAddress.Text + "','" + txtEmailId.Text + "','" + txtph.Text + "','" + ddlConcentration.SelectedItem.Text + "','null','null','inactive','" + txtentrydate.Text + "','" + txtGrescore.Text + "','" + txtGpa.Text + "','" + GenerateMail + "','Approved','Withdrawn','Not Completed','null','null','null')";
            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {

                sendMail(txtEmailId.Text);
                Lblresult.Text = " Added Successfully and Details are Sent to Student Personal EmailAddress";
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtUname.Text = "";
                txtEmailId.Text = "";
                txtGpa.Text = "";
                txtGrescore.Text = "";
                txtMailingAddress.Text = "";
                txtph.Text = "";
                txtentrydate.Text = "";
                ddlConcentration.SelectedIndex = -1;



            }
            else
                Lblresult.Text = "  Added Failed";
        }
        catch (Exception ex)
        {
            Lblresult.Text = "The Student ID Already Exists";
            txtUname.Focus();
            txtUname.BorderColor = System.Drawing.Color.Red;

           

        }
    }

    private void sendMail(string ucmoMail)
    {

        MailMessage sendmail = new MailMessage();
        sendmail.From = new MailAddress("rteja0828@gmail.com");
        sendmail.To.Add(ucmoMail);
        sendmail.Body = "Welcome to the University of Central Missouri!" + "<br/><br/>" + "As a newly admitted student, you will have access to MyCentral: https://mycentral.ucmo.edu This system is used to pay bills, sign up for classes, drop classes, check your grades, check your financial aid status, etc." + "<br/><br/>" + "FirstName: " + txtFirstName.Text + "<br /><br/>" + "LastName: " + txtLastName.Text + "<br /><br/>" + "UserName: " + txtUname.Text + "<br/><br/>" + "Password: " + pwd + "<br/><br/>" + "Mailing Address: " + txtMailingAddress.Text + "<br/><br/>" + "EmailId: " + txtEmailId.Text + "<br/><br/>" + "Phone Number: " + txtph.Text + "<br/><br/>" + "Concentration: " + ddlConcentration.SelectedItem.Text + "<br/><br/>" + "Program NtryDate: " + txtentrydate.Text + "<br/><br/>" + "GMAT/GRE Scrore: " + txtGrescore.Text + "<br/><br/>" + "GPA: " + txtGpa.Text + "<br/><br/>" + "UCMO MailAddress: " + GenerateMail + "<br/><br/>" + "Student Website: " + "http://localhost:50899/Student.aspx" + "<br/><br/>" + "Graduation:  " + "Pending" + "<br/><br/>" + "Program:  " + "Withdrawn" + "<br/><br/>" + "AcademicCode:  " + "Not Completed";
        sendmail.Subject = "Newly Enrolled Student";
        sendmail.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("rteja0828@gmail.com", "9010202724");
        smtp.EnableSsl = true;
        smtp.Port = 587;
        smtp.Send(sendmail);
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
}