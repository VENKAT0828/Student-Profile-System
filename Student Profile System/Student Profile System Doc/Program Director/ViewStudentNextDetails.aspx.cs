using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program_Director_ViewStudentNextDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Label9.Visible = false;
            txtdes.Visible = false;
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select FirstName,Studentid,Ucmoaddress,EMailID,graduation,program,Description,academiccode from StudentDetails  where Studentid='" + Session["name"].ToString() + "'";
            cmd.Connection = con;
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            if(sdr.Read())
            {
              txtfname.Text=sdr[0].ToString();
              txtstdid.Text = sdr[1].ToString();
              txtucmo.Text = sdr[2].ToString();
              txtemil.Text = sdr[3].ToString();
              string gr = sdr[4].ToString();
              string pr = sdr[5].ToString();
              if (gr == "Approved")
              {
                  rdgraduation.Items[0].Selected = true;
              }
              else if (gr == "Deny")
              {
                  rdgraduation.Items[1].Selected = true;
              }
               
               if (pr == "Accepted")
              {
                rdprogram.Items[1].Selected = true;
              }
              else if (pr == "Conditions")
              {
                rdprogram.Items[2].Selected = true;
                Label9.Visible = true;
                txtdes.Visible = true;
              }
               else if (pr == "Withdrawn")
              {
                rdprogram.Items[0].Selected = true;
              }
              txtdes.Text=sdr[6].ToString();
              txtcode.Text=sdr[7].ToString();
            }
        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update StudentDetails set EMailID='" + txtemil.Text + "',graduation='" + rdgraduation.SelectedItem.Text + "',program='" + rdprogram.SelectedItem.Text + "',Description='" + txtdes.Text + "' where Studentid='"+txtstdid.Text+"'";
        cmd.Connection = con;
        int i = cmd.ExecuteNonQuery();
        if(i>0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Details updated')</script>");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Details not updated')</script>");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewStudentDetails.aspx");
    }
    protected void rdprogram_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rdprogram.SelectedItem.Text == "Conditions")
        {
            Label9.Visible = true;
            txtdes.Visible = true;
        }
        else
        {
            Label9.Visible = false;
            txtdes.Visible = false;
        }
    }
}
