using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ASPNET
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Logged"] != null) {
                if (Session["Logged"].ToString().Equals("1")) {
                    laLoginStatus.Text = "Logged as " + System.Web.HttpContext.Current.User.Identity.Name;
                }
            }

            ScriptManager.RegisterStartupScript(this, Page.GetType(), "OnLoad", "AdjustLoginWindow();", true);
            ScriptManager.RegisterStartupScript(this, Page.GetType(), "OnLoad", "LoadModalDiv();", true);
        }
    }
}
