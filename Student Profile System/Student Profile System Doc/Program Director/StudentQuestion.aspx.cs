using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_StudentQuestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into StudentQuestions values(" + Session["UserName"].ToString() + ",'" + txtq1.Text + "','" + txtq2.Text + "','" + txtq3.Text + "','" + txtq4.Text + "','" + txtq5.Text + "','" + txtq6.Text + "','" + txtq7.Text + "','" + txtq8.Text + "','" + txtq9.Text + "','" + txtq10.Text + "','" + txtq11.Text + "','" + txtq12.Text + "','" + txtq13.Text + "','" + txtq14.Text + "','" + txtq15.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "')";
        cmd.Connection = con;
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Labelresult.Text = "Question Submited";
            //ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Question Submited')</script>");
            txtq1.Text = "";
            txtq2.Text = "";
            txtq3.Text = "";
            txtq4.Text = "";
            txtq5.Text = "";
            txtq6.Text = "";
            txtq7.Text = "";
            txtq8.Text = "";
            txtq9.Text = "";
            txtq10.Text = "";
            txtq11.Text = "";
            txtq12.Text = "";
            txtq13.Text = "";
            txtq14.Text = "";
            txtq15.Text = "";
            DropDownList1.SelectedIndex = -1;
            DropDownList2.SelectedIndex = -1;

        }
        else
            Labelresult.Text = "Not Submited";
    }
}