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
    public partial class audioupload : System.Web.UI.Page
    {
        CommonUtilities _CommonUtilities = new CommonUtilities();
        protected void Page_Load(object sender, EventArgs e)
        {
            object sessionObject = Session["UserName"];
            if (sessionObject != null)
            {
                Label1.Text = sessionObject.ToString();
            }

        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            string aud;
            aud = "Audio";

            string tempFolderAbsolutePath;
            tempFolderAbsolutePath = Server.MapPath("ShareData//");
            string subFolderRelativePath = @"Audio";//@"SubTemp1";

            DirectoryInfo tempFolder = new DirectoryInfo(tempFolderAbsolutePath);
            DirectoryInfo subFolder = tempFolder.CreateSubdirectory(subFolderRelativePath);

            string tempFileName = String.Concat(Guid.NewGuid().ToString(), @".MP3");

            string str = Path.GetExtension(FileUpload1.PostedFile.FileName);
            if ((str == ".mp3") || (str == ".wav") || (str == ".wma") || (str == ".aiff") || (str == ".au"))
            {
                FileUpload1.SaveAs(subFolder.FullName + "\\" + FileUpload1.FileName);
                SqlConnection con = new SqlConnection();
                SqlCommand cmd = new SqlCommand();
                con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\CloudTest\\Irain-M\\Irain-M\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "insert into sharedetails(filename,username,date,category) values ('" + FileUpload1.FileName + "','" + Label1.Text + "','" + DateTime.Now + "','" + aud + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                               "alert('Audio uploaded successfully!'); window.location.href = 'share.aspx';", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                                          "alert('This file format is not supported in this section!'); window.location.href = 'share.aspx';", true);
            }
        }
         
    }
}