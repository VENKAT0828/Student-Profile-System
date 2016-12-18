using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_PersonalDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from StudentDetails where Studentid='" + Session["UserName"].ToString() + "'";
            cmd.Connection = con;
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            if(sdr.Read())
            {
                txtfname.Text = sdr["FirstName"].ToString();
                txtlname.Text = sdr["LastName"].ToString();
                txtphno.Text = sdr["PhoneNumber"].ToString();
                txtuname.Text = sdr["Studentid"].ToString();
                txtemail.Text = sdr["EMailID"].ToString();
                txtadd.Text = sdr["MailingAddress"].ToString();
            }
        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update StudentDetails set FirstName='" + txtfname.Text + "',LastName='" + txtlname.Text + "',PhoneNumber='" + txtphno.Text + "',EMailID='" + txtemail.Text + "',MailingAddress='" + txtadd.Text + "' where Studentid=" + txtuname.Text + "";
        cmd.Connection = con;
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Updated')</script>");
            txtfname.Enabled = false;
            txtlname.Enabled = false;
            txtphno.Enabled = false;
            txtadd.Enabled = false;
            txtemail.Enabled = false;
        }
        else
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Not Updated')</script>");
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {

        txtfname.Enabled = true;
        txtlname.Enabled = true;
        txtphno.Enabled = true;
        txtadd.Enabled = true;
        txtemail.Enabled = true;
    }
}
