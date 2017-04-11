using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Survey.Models;

namespace Survey.Admin.Uye
{
    public partial class Ekle : System.Web.UI.Page
    {
        AnketEntities1 db = new AnketEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uyeId"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }

            if (IsPostBack)
            {
                return;
            }
        }

        protected void btnIptal_Click(object sender, EventArgs e)
        {
            Response.Redirect("Liste.aspx");
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {

        }
    }
}