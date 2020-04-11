using System;
using System.Web;

namespace Survey.Admin.Hesap
{
    public partial class GuvenliCikis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }
    }
}