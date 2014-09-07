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
    public partial class nonsharedocumentupload : System.Web.UI.Page
    {
        CommonUtilities _CommonUtilities = new CommonUtilities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string tempFolderAbsolutePath;
            tempFolderAbsolutePath = Server.MapPath("NonShareData//" + Session["UserName"].ToString());// @"C:\Temp";
            string subFolderRelativePath = @"Document";//@"SubTemp1";

            DirectoryInfo tempFolder = new DirectoryInfo(tempFolderAbsolutePath);
            DirectoryInfo subFolder = tempFolder.CreateSubdirectory(subFolderRelativePath);

            string tempFileName = String.Concat(Guid.NewGuid().ToString(), @".DOC");
            
           string str = Path.GetExtension(FileUpload1.PostedFile.FileName);
           if ((str == ".docx") || (str == ".txt") || (str == ".rar") || (str == ".doc") || (str == ".ppt") || (str == ".pptx") || (str == ".xls") || (str == ".xlsx") || (str == ".accdb") || (str == ".pdf"))
           {



               FileUpload1.SaveAs(subFolder.FullName + "\\" + FileUpload1.FileName);

               ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                             "alert('Document uploaded successfully!'); window.location.href = 'nonshare.aspx';", true);
           }
           else
           {
               ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp",
                                         "alert('This file format is not supported in this section!'); window.location.href = 'nonshare.aspx';", true);
           }
        }
    }
}