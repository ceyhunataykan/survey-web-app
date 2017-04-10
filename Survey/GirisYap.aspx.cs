using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Survey.Models;

namespace Survey
{
    public partial class GirisYap : System.Web.UI.Page
    {
        AnketEntities1 db = new AnketEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.Form["txtKullaniciAdi"]) || string.IsNullOrEmpty(Request.Form["txtParola"]))
            {
                Response.Redirect("Login.aspx?h=1");
            }
            string kullaniciAdi = Request.Form["txtKullaniciAdi"].ToString();
            string parola = Request.Form["txtParola"].ToString();

            var sorgu = db.Kullanici.Where(k => k.Kullanici_Adi.Equals(kullaniciAdi) && k.Kullanici_Parola.Equals(parola)).FirstOrDefault();
            if (sorgu != null)
            {
                if (sorgu.Durum == true)
                {
                    Session["uyeId"] = sorgu.Kullanici_ID;
                    Session["uyeKadi"] = sorgu.Kullanici_Adi;
                    Session["uyeAdmin"] = sorgu.Rol.Rol_Adi;
                    Response.Redirect("~/Admin/Dashboard.aspx");
                }
                else
                {
                    Response.Redirect("Login.aspx?h=3");
                }
            }
            else
            {
                Response.Redirect("Login.aspx?h=2");
            }
        }
    }
}