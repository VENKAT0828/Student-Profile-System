using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advisor_ViewStudentQuestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            Label1.Visible = false;
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select Studentid from StudentQuestions";
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
   
    protected void lnkView_Click(object sender, EventArgs e)
    {
       
        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
        string uname = grdrow.Cells[1].Text;
        Label1.Visible = true;
        lbluName.Text=uname;
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from StudentQuestions where Studentid='" + uname + "'";
        cmd.Connection = con;
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            Panel1.Visible = true;
            txtq1.Text = sdr["Question1"].ToString();
            txtq2.Text = sdr["Question2"].ToString();
            txtq3.Text = sdr["Question3"].ToString();
            txtq4.Text = sdr["Question4"].ToString();
            txtq5.Text = sdr["Question5"].ToString();
            txtq6.Text = sdr["Question6"].ToString();
            txtq7.Text = sdr["Question7"].ToString();
            txtq8.Text = sdr["Question8"].ToString();
            txtq9.Text = sdr["Question9"].ToString();
            txtq10.Text = sdr["Question10"].ToString();
            txtq11.Text = sdr["Question11"].ToString();
            txtq12.Text = sdr["Question12"].ToString();
            txtq13.Text = sdr["Question13"].ToString();
            txtq14.Text = sdr["Question14"].ToString();
            txtq15.Text = sdr["Question15"].ToString();
            txtq16.Text = sdr["Question16"].ToString();
            txtq17.Text = sdr["Question17"].ToString();
        }
        else
        {
            Panel1.Visible = false;
           
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
            e.Row.ToolTip = "Click to select this row.";
        }
    }
}