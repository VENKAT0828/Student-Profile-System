using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program_Director_AddConcentration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }

    private void bind()
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from DirectorConcentration";
        cmd.Connection = con;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void btnAdd_Click(object sender, EventArgs e)
    {
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into DirectorConcentration values( '" + txtCname.Text + "','" + txtCCode.Text + "','" + txtCDes.Text + "')";
            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                bind();
                Label4.Text="Concetration Added Successfully";
                txtCname.Text = "";
                txtCDes.Text = "";
                txtCCode.Text = "";
                
            }
            else
                Label4.Text = "Concetration Added Failed";


    }
}