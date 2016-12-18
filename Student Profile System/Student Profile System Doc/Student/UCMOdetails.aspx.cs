using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_UCMOdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        txtu.Text = Session["UserName"].ToString();
        getprofile();
    }

    private void getprofile()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select Concentration,ccode,advisor,cstatus,EntryDate,Score,GPA,Ucmoaddress,graduation,program,academiccode from StudentDetails where Studentid='" + txtu.Text + "'";
        cmd.Connection = con;
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            txtc.Text = sdr[0].ToString();
            txtcc.Text = sdr[1].ToString();
            txtadv.Text = sdr[2].ToString();
            txtcs.Text = sdr[3].ToString();

            txtpd.Text = sdr[4].ToString();
            txtgm.Text = sdr[5].ToString();
           
            txtgp.Text = sdr[6].ToString();
            txtucmo.Text = sdr[7].ToString();
            txtgr.Text = sdr[8].ToString();
            txtprogram.Text = sdr[9].ToString();
            txtacode.Text = sdr[10].ToString();
            
        }
    }
}