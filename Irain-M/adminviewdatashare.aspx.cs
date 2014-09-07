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
using System.IO.Compression;
using System.Net;
namespace Irain_M
{
    public partial class adminviewdatashare : System.Web.UI.Page
    {
        CommonUtilities _CommonUtilities = new CommonUtilities();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }
        protected void btnDocView_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            string tempFolderAbsolutePath;

            tempFolderAbsolutePath = Server.MapPath("ShareData//" + "//Document");


            //string path = Server.MapPath("NonShare//" + Session["UserName"].ToString() + "//document");
            DirectoryInfo di = new DirectoryInfo(tempFolderAbsolutePath);

            FileInfo[] rgFiles = di.GetFiles("*.*");
            ArrayList arrList = new ArrayList();
            //Hashtable hasTable = new Hashtable();

            if (rgFiles.Length > 0)
            {
                //int count = 0;

                foreach (FileInfo subFile in rgFiles)
                {
                    //hasTable
                    arrList.Add(subFile.Name);
                }
            }

            GridView1.DataSource = arrList;
            GridView1.DataBind();

            ViewState["fileType"] = "Document";
        }
        protected void btnAudioView_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            string tempFolderAbsolutePath;

            tempFolderAbsolutePath = Server.MapPath("ShareData//" + "//Audio");


            DirectoryInfo di = new DirectoryInfo(tempFolderAbsolutePath);

            FileInfo[] rgFiles = di.GetFiles("*.*");
            ArrayList arrList = new ArrayList();
            if (rgFiles.Length > 0)
            {

                foreach (FileInfo subFile in rgFiles)
                {
                    arrList.Add(subFile.Name);
                }
            }


            GridView1.DataSource = arrList;

            GridView1.DataBind();

            ViewState["fileType"] = "Audio";


        }
        protected void btnVideoView_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            string tempFolderAbsolutePath;

            tempFolderAbsolutePath = Server.MapPath("ShareData//" + "//Video");



            DirectoryInfo di = new DirectoryInfo(tempFolderAbsolutePath);

            FileInfo[] rgFiles = di.GetFiles("*.*");

            ArrayList arrList = new ArrayList();
            if (rgFiles.Length > 0)
            {

                foreach (FileInfo subFile in rgFiles)
                {
                    arrList.Add(subFile.Name);
                }
            }


            GridView1.DataSource = arrList;
            GridView1.DataBind();
            ViewState["fileType"] = "Video";
        }
        protected void btnImagesView_Click(object sender, EventArgs e)
        {

            GridView1.Visible = true;
            string tempFolderAbsolutePath;

            tempFolderAbsolutePath = Server.MapPath("ShareData//" + "//Image");

            //string path = Server.MapPath("NonShare//" + Session["UserName"].ToString() + "//document");

            DirectoryInfo di = new DirectoryInfo(tempFolderAbsolutePath);

            //Directory.GetFiles((tempFolderAbsolutePath).ToString());

            FileInfo[] rgFiles = di.GetFiles("*.*");
            ArrayList arrList = new ArrayList();
            if (rgFiles.Length > 0)
            {

                foreach (FileInfo subFile in rgFiles)
                {
                    arrList.Add(subFile.Name);
                }
            }

            GridView1.DataSource = arrList;

            GridView1.DataBind();
            ViewState["fileType"] = "Image";
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;

            GridView1.DataBind();
        }


        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {


            if (e.Row.RowType == DataControlRowType.Header)
            {
                if (e.Row.Cells[3].Text == "Item")
                {
                    e.Row.Cells[3].Text = "File Name";

                }
            }

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


            string strCurrentDir = string.Empty;

            if (ViewState["fileType"] != null)
            {
                strCurrentDir = Server.MapPath("ShareData//" + ViewState["fileType"] + "\\");
                string[] names = Directory.GetFileSystemEntries(strCurrentDir);
                File.Delete(names[e.RowIndex]);
                GridView1.DataBind();
                _CommonUtilities.MessageBox("This file Is Deleted Successfully");
            }

        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string FileName = GridView1.Rows[e.NewSelectedIndex].Cells[3].Text.ToString();
            DownloadFile(FileName);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        }

        protected void DownloadFile(string filepath)
        {
            string strCurrentDir = string.Empty;

            if (ViewState["fileType"] != null)
            {
                strCurrentDir = Server.MapPath("ShareData//" + ViewState["fileType"] + "\\");
            }




            if (System.IO.File.Exists(strCurrentDir + filepath))
            {

                System.IO.FileStream MyFileStream;
                long FileSize;

                MyFileStream = new System.IO.FileStream(strCurrentDir + filepath, System.IO.FileMode.Open);
                FileSize = MyFileStream.Length;

                byte[] Buffer = new byte[(int)FileSize];

                MyFileStream.Read(Buffer, 0, (int)FileSize);
                MyFileStream.Close();

                System.Web.HttpContext.Current.Response.ClearContent();
                System.Web.HttpContext.Current.Response.ContentType = "application/octet-stream";
                System.Web.HttpContext.Current.Response.AddHeader("content-disposition", "attachment; filename=" + filepath);
                System.Web.HttpContext.Current.Response.BinaryWrite(Buffer);
                System.Web.HttpContext.Current.Response.End();
                _CommonUtilities.MessageBox("THIS IMAGE IS DOWNLOADED SUCCESSFULLY");
            }
            else
            {
                System.Web.HttpContext.Current.Response.Write("<script>alert('File Doest Exists')</script>");
            }
        }


    }
}