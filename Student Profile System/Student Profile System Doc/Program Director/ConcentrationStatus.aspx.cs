using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program_Director_ConcentrationStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            //Bind();
            getAdvisors();
        }
    }

    private void getAdvisors()
    {
        ddAdvisors.Items.Clear();
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select FirstName from AddAdvisor";
        cmd.Connection = con;
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        ddAdvisors.Items.Insert(0, "---Select---");
        while (sdr.Read())
        {
            ddAdvisors.Items.Add(sdr["FirstName"].ToString());
        }
        con.Close();
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Button1_Click(object sender, EventArgs e)
    {
         con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update StudentDetails set Concentration='" + ddlconcentration.SelectedItem.Text + "', ccode='" + txtCode.Text + "',advisor='" + ddAdvisors.SelectedItem.Text + "',cstatus='" + RadioButtonList1.SelectedItem.Text + "' where Studentid='" + txtstudentid.Text + "'";
            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label6.Text = "Added Successfully";
                txtstudentid.Text = "";
                ddlconcentration.SelectedIndex = -1;
                txtCode.Text = "";
                ddAdvisors.SelectedIndex = -1;
            }
            else
                Label6.Text = "Added Failed";
       
    }
    protected void txtstudentid_TextChanged(object sender, EventArgs e)
    {
        ddlconcentration.Items.Clear();
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select Concentration from StudentDetails where Studentid='" + txtstudentid.Text + "'";
        cmd.Connection = con;
        ddlconcentration.Items.Insert(0, "---Select---");
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            ddlconcentration.Items.Add(sdr[0].ToString());
            Label6.Text = "";
            ddlconcentration.Focus();
            txtstudentid.BorderColor = Color.White;
        }
        else
        {
            Label6.Text = "Invalid Student ID";
            txtstudentid.Focus();
            txtstudentid.BorderColor=Color.Red;
        }
    }
    protected void ddlconcentration_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = ddlconcentration.SelectedItem.Text;
        
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select ConcetrationCode,ConcetrationDesc from DirectorConcentration where ConcetrationName='" + ddlconcentration.SelectedItem.Text + "'";
        cmd.Connection = con;
        ddlconcentration.Items.Insert(0, "---Select---");
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            txtcCode.Text = sdr[0].ToString();
            txtcCdesc.Text = sdr[1].ToString();
        }
    }
}
