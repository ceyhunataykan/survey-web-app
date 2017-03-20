using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Survey.Models;

namespace Survey.Admin.Anket.Soru
{
    public partial class Liste : System.Web.UI.Page
    {
        AnketEntities db = new AnketEntities();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                Response.Redirect("/Admin/Dashboard.aspx");
            }
            id = Convert.ToInt32(Request.QueryString["id"]);
            var liste = db.Sorular.Where(s => s.Anket_ID == id).ToList();
            lvSoruListe.DataSource = liste;
            lvSoruListe.DataBind();
        }
    }
}