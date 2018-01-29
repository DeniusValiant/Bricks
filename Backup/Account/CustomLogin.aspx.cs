using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ASPNET.Account
{
    public partial class CustomLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            if (Membership.ValidateUser(tbLogin.Text, tbPassword.Text))
            {
                laInfoMessage.Text = "Authentication was passed";
                Session["Logged"] = "1";
                FormsAuthentication.SetAuthCookie(tbLogin.Text, false);
                Response.Redirect("~/Default.aspx");
            }
            else 
            {
                laInfoMessage.Visible = true;
                laInfoMessage.Text = "Warning! Wrong login or password.";
            }
        }
    }
}