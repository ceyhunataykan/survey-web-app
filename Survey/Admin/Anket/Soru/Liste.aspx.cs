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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.QueryString["anket-id"]))
            {
                Response.Redirect("/Admin/Dashboard.aspx");
            }
            if (IsPostBack)
            {
                return;
            }
            test.anketid = Convert.ToInt32(Request.QueryString["anket-id"]);
            lvSoruListe.DataSource = db.Sorular.Where(s => s.Anket_ID == test.anketid).ToList();
            lvSoruListe.DataBind();
        }

        protected void btnSoru_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ekle.aspx");
        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/Anket/Liste.aspx");
        }

        protected void btnSil_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Sorular sil = db.Sorular.Where(s => s.Soru_ID == id).FirstOrDefault();
            db.Sorular.Remove(sil);
            db.SaveChanges();
            Response.Redirect("Liste.aspx?anket-id=" + test.anketid);
        }
    }
}