using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Survey.Models;
using System.Data.Entity.Core.Objects;

namespace Survey.User
{
    public partial class Dashboard : System.Web.UI.Page
    {
        AnketEntities1 db = new AnketEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            surveyApp.loginKontrol();

            if (IsPostBack)
            {
                return;
            }
            var liste = (from a in db.Anketler select new { a.Anket_ID, a.Anket_Adi, basTarih = EntityFunctions.TruncateTime(a.Anket_Baslangic_Tarih), bitTarih = EntityFunctions.TruncateTime(a.Anket_Bitis_Tarih), a.Anket_Durum, Soru_Sayi = a.Sorular.Count }).ToList();
            lvAnketListe.DataSource = liste;
            lvAnketListe.DataBind();
        }
    }
}