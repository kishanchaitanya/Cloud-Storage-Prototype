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
    public partial class home : System.Web.UI.Page
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
    }
}