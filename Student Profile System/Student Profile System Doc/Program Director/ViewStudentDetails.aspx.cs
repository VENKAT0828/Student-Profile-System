using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program_Director_ViewStudentDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.BindData();
        }
    }
    protected void lnkView_Click(object sender, EventArgs e)
    {

        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
        string uname = grdrow.Cells[2].Text;
        Session["name"]=uname;
        Response.Redirect("ViewStudentNextDetails.aspx");
        
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    private void BindData()
    {
        string query = "SELECT FirstName,Studentid,Ucmoaddress,EMailID,graduation,program,academiccode,Description FROM StudentDetails";
        SqlCommand cmd = new SqlCommand(query);
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }

    private DataTable GetData(SqlCommand cmd)
    {
        string strConnString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    return dt;
                }
            }
        }
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        this.BindData();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        this.BindData();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string gdate = DateTime.Now.ToString("dd-MM-yyyy");
        string pdate = DateTime.Now.ToString("dd-MM-yyyy");
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        GridViewRow row = GridView1.Rows[e.RowIndex];
       // Label id = row.FindControl("Label1") as Label;
        s = row.Cells[2].Text;
        TextBox email = row.FindControl("txtEmailID") as TextBox;
        TextBox desc = row.FindControl("TextBox1") as TextBox;
        DropDownList graduation = row.FindControl("ddlgrauation") as DropDownList;
        DropDownList program = row.FindControl("ddlprogram") as DropDownList;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update StudentDetails set EMailID='" + email.Text + "',graduation='" + graduation.Text + "',program='" + program.Text + "',Description='" + desc.Text + "',graduationDate='" + gdate + "',ProgramDate='" + pdate + "' where Studentid=" + s + "";
        cmd.Connection = con;
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            //ClientScript.RegisterClientScriptBlock(GetType(), "sas", "<script> alert(' student details updated successfully');</script>", false);
            GridView1.EditIndex = -1;
            BindData();
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex == e.Row.RowIndex)
        //{
        //    DropDownList ddlConc = (DropDownList)e.Row.FindControl("ddlConcentration");
        //    string query = "select distinct Concentration from StudentDetails";
        //    SqlCommand cmd = new SqlCommand(query);
        //    ddlConc.DataSource = GetData(cmd);
        //    ddlConc.DataTextField = "Concentration";
        //    ddlConc.DataValueField = "Concentration";
        //    ddlConc.DataBind();
        //    ddlConc.Items.FindByValue((e.Row.FindControl("lblConcentration") as Label).Text).Selected = true;
        //}
    }
    string s;
    protected void Buttonview_Click(object sender ,EventArgs e)
    {
        //Panel1.Visible = true;
        GridViewRow gdr = (GridViewRow)((Button)sender).NamingContainer;
        s = gdr.Cells[2].Text;
        Session["std"]=s;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select FirstName,LastName,Studentid,MailingAddress,PhoneNumber,EMailID,Concentration,ccode,advisor,cstatus,EntryDate,Score,GPA from StudentDetails  where Studentid='" + s + "'";
        cmd.Connection = con;
        SqlDataAdapter sd = new SqlDataAdapter(cmd);
        DataSet dds = new DataSet();
        sd.Fill(dds);
        GridView2.DataSource = dds;
        GridView2.DataBind();
    }
    public void SecondBind()
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select FirstName,LastName,Studentid,MailingAddress,PhoneNumber,EMailID,Concentration,ccode,advisor,cstatus,EntryDate,Score,GPA from StudentDetails where Studentid='" + Session["std"].ToString() + "'";
        cmd.Connection = con;
        SqlDataAdapter sd = new SqlDataAdapter(cmd);
        DataSet dds = new DataSet();
        sd.Fill(dds);
        GridView2.DataSource = dds;
        GridView2.DataBind();
    }
    protected void Buttonpview_Click(object sender, EventArgs e)
    {
        //Panel1.Visible = true;
        GridViewRow gdr = (GridViewRow)((Button)sender).NamingContainer;
        s = gdr.Cells[2].Text;
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from PrereqForAdvisor where Studentid='" + s+ "'  ";
        cmd.Connection = con;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridViewprerquisite.DataSource = ds;
        GridViewprerquisite.DataBind();
    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        SecondBind();
    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex =e.NewEditIndex;
        SecondBind();
    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        GridViewRow row = GridView2.Rows[e.RowIndex];
        Label std = row.FindControl("lblStudentId") as Label;
        DropDownList conc = row.FindControl("ddlConcentration") as DropDownList;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update StudentDetails set Concentration='" + conc.Text + "' where Studentid=" + std.Text + "";
        cmd.Connection = con;
        int s = cmd.ExecuteNonQuery();
        if(s>0)
        {
            ClientScript.RegisterClientScriptBlock(GetType(), "sas", "<script> alert('Concentration updated successfully');</script>", false);
            GridView2.EditIndex = -1;
            SecondBind();
        }
        else
        {
            ClientScript.RegisterClientScriptBlock(GetType(), "sas", "<script> alert('Concentration not updated');</script>", false);
        }
    }
}