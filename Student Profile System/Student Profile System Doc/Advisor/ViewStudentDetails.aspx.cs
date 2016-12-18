using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advisor_ViewStudentDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Paneldetails.Visible = false;
            Lbldescription.Visible = false;
            Txtdwscr.Visible = false;
            bind();
           
        }

    }
    public void bind()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select Studentid,firstname,lastname,PhoneNumber,EMailID from StudentDetails";
        cmd.Connection = con;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridViewsdetails.DataSource = ds;
        GridViewsdetails.DataBind();
        Label16.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text == "")
        {
            ClientScript.RegisterClientScriptBlock(GetType(), "sas", "<script> alert('Please Enter Student ID');</script>", false);
        }
        else
        {

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select Studentid,firstname,lastname,PhoneNumber,EMailID from StudentDetails where Studentid='" + TextBox1.Text + "'     ";
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridViewsdetails.DataSource = ds;
            GridViewsdetails.DataBind();
            Label16.Visible = true;
        }
    }
    string s1;
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        getprefix();
        Paneldetails.Visible = true;
        GridViewRow gdr = (GridViewRow)((LinkButton)sender).NamingContainer;
        s1 = gdr.Cells[0].Text;

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select Studentid,concentration,ccode,cstatus,academiccode,Score,GPA,Ucmoaddress,graduation,program,academiccode,graduationDate,ProgramDate from StudentDetails where Studentid='" + s1 + "'";
        cmd.Connection = con;
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {

            TextBox6.Text = sdr[0].ToString();
            TextBox7.Text = sdr[1].ToString();
            TextBox8.Text = sdr[2].ToString();
            TextBox9.Text = sdr[3].ToString();
            TextBox10.Text = sdr[4].ToString();
            TextBox11.Text = sdr[5].ToString();
            TextBox12.Text = sdr[6].ToString();
            TextBox13.Text = sdr[7].ToString();
            TextBox14.Text = sdr[8].ToString();
            TextBox15.Text = sdr[9].ToString();
            txtGraduationDate.Text = sdr["graduationDate"].ToString();
            txtProgramDate.Text = sdr["ProgramDate"].ToString();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        GridViewRow gdr = (GridViewRow)((LinkButton)sender).NamingContainer;
      string  s = gdr.Cells[0].Text;
        Session["sid"] = s;
        Response.Redirect("Viewprerequisite.aspx");
    }

   
    private void getprefix()
    {

        Ddlprefix.Items.Clear();
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Prerequisite where pstatus='Active'";
        Ddlprefix.Items.Insert(0,"---Select---");
        cmd.Connection = con;
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        
        while(sdr.Read())
        {
            Ddlprefix.Items.Add(sdr["PrerequesiteId"].ToString());
        }
    }


    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedItem.Text == "Met")
        {
            Lbldescription.Visible = true;
            Txtdwscr.Visible = true;
        }
        else
        {
            Lbldescription.Visible = false;
            Txtdwscr.Visible = false;
        }
    }
    protected void Btnpreadd_Click(object sender, EventArgs e)
    {
        updatedates();
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into PrereqForAdvisor values('" + TextBox6.Text + "','" + Ddlprefix.SelectedItem.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + Txtdwscr.Text + "','" + DateTime.Now.ToShortDateString() + "')";
        cmd.Connection = con;
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            ClientScript.RegisterClientScriptBlock(GetType(), "sas", "<script> alert('Prerequest Updated');</script>", false);
            
        }
        Paneldetails.Visible = false;
    }

    private void updatedates()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update StudentDetails set graduationDate='" + txtGraduationDate.Text + "',ProgramDate='" + txtProgramDate.Text + "' where Studentid=" + TextBox6.Text+ "";
        cmd.Connection = con;
        int i = cmd.ExecuteNonQuery();
    }


}