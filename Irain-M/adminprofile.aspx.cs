using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace Irain_M
{
    public partial class adminprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void viewbtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\C#\\ir\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
                SqlCommand com = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter("select password,realname,emailid,mobno,dob,state,country from register where username ='" + usernametb.Text + "'", con);
                con.Open();
                DataTable dt = new DataTable();
                da.Fill(dt);
                passtb.Text = dt.Rows[0][0].ToString();
                realnametb.Text = dt.Rows[0][1].ToString();
                emailtb.Text = dt.Rows[0][2].ToString();
                mobtb.Text = dt.Rows[0][3].ToString();
                dobtb.Text = dt.Rows[0][4].ToString();
                statetb.Text = dt.Rows[0][5].ToString();
                countrytb.Text = dt.Rows[0][6].ToString();
                con.Close();
                passtb.Enabled = false;
                realnametb.Enabled = false;
                emailtb.Enabled = false;
                mobtb.Enabled = false;
                dobtb.Enabled = false;
                statetb.Enabled = false;
                countrytb.Enabled = false;
            }
            catch
            {
                Response.Write("<script>alert('No Such user exist')</script>");
            }


        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\C#\\ir\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "Delete from register where (username='" + usernametb.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                    "alert('User successfully deleted'); window.location.href = 'adminhome.aspx';", true);

        }

        

        
    }
}