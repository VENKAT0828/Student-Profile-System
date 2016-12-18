using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program_Director_AdvisorViewDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Bind();
            
            Bind2();
            Panel1.Visible = false;
        }
    }
    private void Bind2()
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select UserName,FirstName,Status from AddAdvisor";
        cmd.Connection = con;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
    private void Bind(string name)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select FirstName,LastName,UserName,Password,Mob,Email,Address,Status from AddAdvisor where UserName='" + name + "'";
        cmd.Connection = con;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void lnkView_Click(object sender, EventArgs e)
    {
        Label10.Visible = true;
        
        Label11.Visible = true;
        Panel1.Visible = true;
        GridViewRow grdrow =(GridViewRow)((LinkButton)sender).NamingContainer;
        LinkButton name = (LinkButton)grdrow.FindControl("lnkView") as LinkButton;
        Label11.Text = name.Text;
        Session["nn"]=name.Text;
        Bind(Session["nn"].ToString());

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Bind(Session["nn"].ToString());
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        Bind(Session["nn"].ToString());
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        Label UName = row.FindControl("lblUserName") as Label;
        Label email = row.FindControl("Label6") as Label;
        TextBox pwd = row.FindControl("txtpwd") as TextBox;
        String Statuss = ((DropDownList)(GridView1.Rows[e.RowIndex].FindControl("ddlStatus"))).SelectedValue.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update AddAdvisor set Password='" + pwd.Text + "',Status='" + Statuss + "' where UserName='" + UName.Text + "'";
        cmd.Connection = con;
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            sendMail(email.Text,pwd.Text,UName.Text);
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Password Updated and Sent to Mail')</script>");
           
            GridView1.EditIndex = -1;
            Bind(Session["nn"].ToString());
        }

    }

    private void sendMail(string email,string pwd,string name)
    {
        MailMessage sendmail = new MailMessage();
        sendmail.From = new MailAddress("rteja0828@gmail.com");
        sendmail.To.Add(email);
        sendmail.Body = "Hi" + "<br/><br/>" + "FacultyID: " + name + "<br /><br/>" + "Password: " + pwd + "";
        sendmail.Subject = "Your password Updated";
        sendmail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("rteja0828@gmail.com", "9010202724");
        smtp.EnableSsl = true;
        smtp.Port = 587;
        smtp.Send(sendmail);
    }  
    string Status2 = null;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    Status2 = DataBinder.Eval(e.Row.DataItem, "Status").ToString();
        //    if (Status2 == "Active")
        //    {
        //        e.Row.Cells[8].BackColor = System.Drawing.Color.Green;

        //    }
        //    else
        //    {
        //        e.Row.Cells[8].BackColor = System.Drawing.Color.Red;
        //    }

        //}
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}