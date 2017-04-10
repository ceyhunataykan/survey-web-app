using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Survey.Models;
namespace Survey.Admin.Hesap
{
    public partial class Parola : System.Web.UI.Page
    {
        AnketEntities1 db = new AnketEntities1();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uyeID"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            id = Convert.ToInt32(Session["uyeId"].ToString());

            if (!IsPostBack)
            {
                ViewState["SonSayfa"] = Request.UrlReferrer;        
            }          
        }

        protected void btnVazgec_Click(object sender, EventArgs e)
        {
            if (ViewState["SonSayfa"] != null)
            {
                Response.Redirect(ViewState["SonSayfa"].ToString());
            }
        }

        protected void btnDegistir_Click(object sender, EventArgs e)
        {

        }
    }
}