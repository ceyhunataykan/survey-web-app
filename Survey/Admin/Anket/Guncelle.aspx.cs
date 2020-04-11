using Microsoft.AspNet.Identity;
using Survey.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Survey.Admin.Anket
{
    public partial class Guncelle : System.Web.UI.Page
    {
        AnketEntities1 db = new AnketEntities1();
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
            if (string.IsNullOrEmpty(Request.QueryString["anket-id"]))
            {
                Response.Redirect("Liste.aspx");
            }
            surveyApp.anketid = Convert.ToInt32(Request.QueryString["anket-id"]);

            var getir = db.Anketler.Where(a => a.Anket_ID == surveyApp.anketid).FirstOrDefault();
            txtAnketAd.Text = getir.Anket_Adi;
            txtAnketBasligi.Text = getir.Anket_Basligi;
            txtAnketAciklamasi.Text = getir.Anket_Aciklamasi;
            txtBaslangicTarih.Text = Convert.ToString(getir.Anket_Baslangic_Tarih);
            txtBitisTarih.Text = Convert.ToString(getir.Anket_Bitis_Tarih);
            if (getir.Anket_Durum == true)
            {
                anketDurum.SelectedValue = "1";
            }
            else
            {
                anketDurum.SelectedValue = "0";
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            if (txtAnketAd.Text == "" || txtBaslangicTarih.Text == "" || txtBitisTarih.Text == "" || anketDurum.SelectedIndex == -1)
            {
                Mesaj.Text = "Bilgiler Boş Olamaz";
                Mesaj.CssClass = "alert alert-danger";
                ClientScript.RegisterStartupScript(this.GetType(), "HideLabel", "<script type=\"text/javascript\">setTimeout(\"document.getElementById('" + Mesaj.ClientID + "').style.display='none'\",4000)</script>");
                return;
            }
            else
            {
                Anketler guncelle = db.Anketler.Where(a => a.Anket_ID == surveyApp.anketid).FirstOrDefault();
                guncelle.Anket_Adi = txtAnketAd.Text.Trim();
                guncelle.Anket_Baslangic_Tarih = Convert.ToDateTime(txtBaslangicTarih.Text);
                guncelle.Anket_Bitis_Tarih = Convert.ToDateTime(txtBitisTarih.Text);
                if (anketDurum.SelectedValue == "1")
                {
                    guncelle.Anket_Durum = true;
                }
                else
                {
                    guncelle.Anket_Durum = false;
                }
                db.SaveChanges();

                Mesaj.Text = "Anket Güncellendi.";
                Mesaj.CssClass = "alert alert-success";
                ClientScript.RegisterStartupScript(this.GetType(), "HideLabel", "<script type=\"text/javascript\">setTimeout(\"document.getElementById('" + Mesaj.ClientID + "').style.display='none'\",4000)</script>");
                Response.Redirect("Liste.aspx");
            }
        }

        protected void btnIptal_Click(object sender, EventArgs e)
        {
            Response.Redirect("Liste.aspx");
        }
    }
}