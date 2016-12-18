using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program_Director_AddPrerequest : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Prerequisite values('" + txtPrefex.Text + "','" + txtNames.Text + "','" + txtnumber.Text + "','" +RadioButtonList1.SelectedItem.Text + "')";
        cmd.Connection = con;
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Labelresult.Text = "Prerequest added successfully";
            txtPrefex.Text = "";
            txtNames.Text = "";
            txtnumber.Text = "";

           
        }
    }
}