using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advisor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();

    }

    private void SetImageUrl()
    {
        Random r = new Random();
        int i = r.Next(1, 9);
        Image1.ImageUrl = "~/images/" + i.ToString() + ".jpg";
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from AddAdvisor where UserName='" + txtUname.Text + "' and Password='" + txtpwd.Text + "'";
            cmd.Connection = con;
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["UserName"] = txtUname.Text;
                getname();
                Response.Redirect("Advisor/Home.aspx");
            }
            else
            {
                Label1.Text = "Invalid FacultyID and Password";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = "Invalid FacultyID and Password";
            
        }
    }

    private void getname()
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select FirstName from AddAdvisor where UserName='" + txtUname.Text + "'";
        cmd.Connection = con;
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            Session["FirstName"] = sdr[0].ToString();
        }
    }
}