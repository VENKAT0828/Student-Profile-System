using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Termsandconditions : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text =  Session["UserName"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked != true)
        {
            Labelresult.Text = "Please read academic code of conduct & submit";
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = " update StudentDetails set academiccode='completed' where Studentid='" + Label1.Text + "'";
            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Panel1.Visible = false;
                Labelresult.Text = "Academic Code of Conduct Completed";
            }
        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}