using Survey.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Survey.Admin.Rapor
{
    public partial class Rapor : System.Web.UI.Page
    {
        AnketEntities db = new AnketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }
            var liste = (from a in db.Anketler select new { a.Anket_ID, a.Anket_Adi, basTarih = EntityFunctions.TruncateTime(a.Anket_Baslangic_Tarih), bitTarih = EntityFunctions.TruncateTime(a.Anket_Bitis_Tarih), a.Anket_Durum, a.Anket_Katilim }).ToList();
            lvAnketListe.DataSource = liste;
            lvAnketListe.DataBind();
        }
    }
}