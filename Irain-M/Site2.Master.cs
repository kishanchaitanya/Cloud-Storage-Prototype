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


namespace Irain_M
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object sessionObject = Session["UserName"];
            if (sessionObject != null)
            {
                Label1.Visible = true;
                Label1.Text = sessionObject.ToString();
            }

        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewdatanonshare.aspx");
        }
    }
}