using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Survey.Models;

namespace Survey.Admin.Anket
{
    public partial class Liste : System.Web.UI.Page
    {
        AnketEntities db = new AnketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }
            lvAnketListe.DataSource = db.Anketler.ToList();
            lvAnketListe.DataBind();
        }
    }
}