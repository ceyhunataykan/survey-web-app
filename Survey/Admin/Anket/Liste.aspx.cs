using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Survey.Models;
using System.Data.Entity.Core.Objects;

namespace Survey.Admin.Anket
{
    public partial class Liste : System.Web.UI.Page
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
            var liste = (from a in db.Anketler select new { a.Anket_ID, a.Anket_Adi, basTarih = EntityFunctions.TruncateTime(a.Anket_Baslangic_Tarih), bitTarih = EntityFunctions.TruncateTime(a.Anket_Bitis_Tarih), a.Anket_Durum, Soru_Sayi = a.Sorular.Count }).ToList();
            lvAnketListe.DataSource = liste;
            lvAnketListe.DataBind();
        }
        protected void btnSil_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Anketler sil = db.Anketler.Where(a => a.Anket_ID == id).FirstOrDefault();
            db.Anketler.Remove(sil);
            db.SaveChanges();
            Response.Redirect("Liste.aspx");
        }
    }
}