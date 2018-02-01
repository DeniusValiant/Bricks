using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PopUpWindow
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, Page.GetType(), "OnLoad", "AdjustLoginWindow();", true);
            ScriptManager.RegisterStartupScript(this, Page.GetType(), "OnLoad", "LoadModalDiv();", true);
        }
    }
}