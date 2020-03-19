using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Survey.Models;
using System.Drawing;

namespace Survey.User
{
    public partial class Anket : System.Web.UI.Page
    {
        AnketEntities1 db = new AnketEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uyeId"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            if (string.IsNullOrEmpty(Request.QueryString["anket-id"]))
            {
                Response.Redirect("/Admin/Dashboard.aspx");
            }
            if (IsPostBack)
            {
                return;
            }

            surveyApp.anketid = Convert.ToInt32(Request.QueryString["anket-id"]);

            var bas = db.Sorular.Where(s => s.Anket_ID == surveyApp.anketid).FirstOrDefault();
            if (bas.Anketler.Anket_Basligi == null)
            {
                lblBaslik.Text = "Anketin Başlığı yok. Lütfen Düzenleyiniz... ";
            }
            else
            {
                lblBaslik.Text = bas.Anketler.Anket_Basligi.ToString();
            }
            
            var soruListe = db.Sorular.Where(s => s.Anket_ID == surveyApp.anketid).ToList();
            rptListe.DataSource = soruListe;
            rptListe.DataBind();
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < rptListe.Items.Count; i++)
            {
                Literal ltSoru_ID = (Literal)rptListe.Items[i].FindControl("ltSoru_ID");
                Literal ltSoruTipi = (Literal)rptListe.Items[i].FindControl("ltSoruTipi");
                Literal ltDurum = (Literal)rptListe.Items[i].FindControl("ltDurum");
                int tip = Convert.ToInt32(ltSoruTipi.Text);
                bool durum = Convert.ToBoolean(ltDurum.Text);
                Yanitlar Ekle = new Yanitlar();
                if (tip == 1)
                {
                    RadioButtonList rbl = (RadioButtonList)rptListe.Items[i].FindControl("rbSec");
                    if (rbl.SelectedIndex == -1)
                    {
                        Label lblSoruBaslik = (Label)rptListe.Items[i].FindControl("lblSoruBaslik");
                        lblSoruBaslik.BackColor = Color.Red;
                        return;
                    }
                    for (int j = 0; j < rbl.Items.Count; j++)
                    {
                        if (rbl.Items[j].Selected)
                        {
                            Ekle.Anket_ID = surveyApp.anketid;
                            Ekle.Soru_ID = Convert.ToInt32(ltSoru_ID.Text);
                            Ekle.Secenek_ID = Convert.ToInt32(rbl.Items[j].Value.ToString());
                            db.Yanitlar.Add(Ekle);
                            db.SaveChanges();
                        }
                    }
                }
                if (tip == 2)
                {
                    CheckBoxList ckb = (CheckBoxList)rptListe.Items[i].FindControl("ckbSec");
                    for (int j = 0; j < ckb.Items.Count; j++)
                    {
                        if (ckb.Items[j].Selected)
                        {
                            Ekle.Anket_ID = surveyApp.anketid;
                            Ekle.Soru_ID = Convert.ToInt32(ltSoru_ID.Text);
                            Ekle.Secenek_ID = Convert.ToInt32(ckb.Items[j].Value.ToString());
                            db.Yanitlar.Add(Ekle);
                            db.SaveChanges();
                        }
                    }
                }
            }
            Anketler anketKatilim = db.Anketler.Where(a => a.Anket_ID == surveyApp.anketid).FirstOrDefault();
            anketKatilim.Anket_Katilim = anketKatilim.Anket_Katilim + 1;
            db.SaveChanges();
            Response.Redirect("~/User/Dashboard.aspx");
        }
   
        protected void rptListe_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Literal ltSoruTipi = (Literal)e.Item.FindControl("ltSoruTipi");
            surveyApp.soruid = Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "Soru_ID").ToString());
            var secListe = db.Secenekler.Where(s => s.Soru_ID == surveyApp.soruid).ToList();
            if (ltSoruTipi.Text == "1")
            {
                RadioButtonList rbl = (RadioButtonList)e.Item.FindControl("rbSec");
                rbl.DataSource = secListe;
                rbl.DataTextField = "Secenek_Adi";
                rbl.DataValueField = "Secenek_ID";
                rbl.DataBind();
            }
            if (ltSoruTipi.Text == "2")
            {
                CheckBoxList ckb = (CheckBoxList)e.Item.FindControl("ckbSec");
                ckb.DataSource = secListe;
                ckb.DataTextField = "Secenek_Adi";
                ckb.DataValueField = "Secenek_ID";
                ckb.DataBind();
            }
        }
    }
}