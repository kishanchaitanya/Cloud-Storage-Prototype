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
    public partial class Site3 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label1.Text = "admin";

        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminviewdatashare.aspx");
        }
    }
}