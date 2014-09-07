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
using System.IO;

namespace Irain_M
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void backbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");

        }

        protected void registerbtn_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection();
                SqlCommand cmd = new SqlCommand();
                con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\CloudTest\\Irain-M\\Irain-M\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "insert into register(username,password,realname,emailid,mobno,dob,state,country) values ('" + usernametb.Text + "','" + passtb.Text + "','" + realnametb.Text + "','" + emailtb.Text + "','" + mobtb.Text + "','" + dobtb.Text + "','" + statetb.Text + "','" + countrytb.Text + "')";
                cmd.ExecuteNonQuery();
                Session["UserName"] = usernametb.Text;
                Directory.CreateDirectory(Server.MapPath(".") + "\\NonShareData\\" + usernametb.Text);
                Directory.CreateDirectory(Server.MapPath(".") + "\\NonShareData\\" + usernametb.Text + "\\Audio");
                Directory.CreateDirectory(Server.MapPath(".") + "\\NonShareData\\" + usernametb.Text + "\\Video");
                Directory.CreateDirectory(Server.MapPath(".") + "\\NonShareData\\" + usernametb.Text + "\\Image");
                Directory.CreateDirectory(Server.MapPath(".") + "\\NonShareData\\" + usernametb.Text + "\\Document");
                con.Close();
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                        "alert('Welcome'); window.location.href = 'Default.aspx';", true);
                Response.Write("<script>alert('Account Successfully Registered')</script>");
            }
            catch
            {
                Response.Write("");
            }


        }

        protected void clearbtn_Click(object sender, EventArgs e)
        {
            usernametb.Text = "";
            passtb.Text = "";
            cpasstb.Text = "";
            realnametb.Text = "";
            emailtb.Text = "";
            mobtb.Text = "";
            dobtb.Text = "";
            statetb.Text = "";
            countrytb.Text = "";
        }
    }
}