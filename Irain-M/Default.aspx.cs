using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
namespace Irain_M
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\CloudTest\\Irain-M\\Irain-M\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        SqlDataReader dr;
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string Query;
            con.Open();
            Query = "select * from register where username ='" + usernametb.Text + "' and password ='" + passtb.Text + "'";
            com = new SqlCommand(Query, con);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                Session["UserName"] = dr[0].ToString();
                Session["UserName"] = usernametb.Text;
                Session["PASSWROD"] = dr[1].ToString();
                Session["PASSWROD"] = passtb.Text;
                Response.Redirect("home.aspx");

            }
            else if ((usernametb.Text == "admin") && (passtb.Text == "admin"))
            {

                Session["UserName"] = usernametb.Text;
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid UserName or Password.Please Enter the correct one!";
            }

            con.Close();
        }

    }
}