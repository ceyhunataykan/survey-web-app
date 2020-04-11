using Microsoft.AspNet.Identity;
using System;

namespace Survey.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    surveyApp.username = User.Identity.GetUserName();
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }
            }
        }
    }
}