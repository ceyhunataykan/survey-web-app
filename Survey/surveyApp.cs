using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Survey
{
    public class surveyApp
    {
        public static int anketid;
        public static int soruid;

        public static void loginKontrol()
        {
            if (HttpContext.Current.Session["uyeId"] == null)
            {
                HttpContext.Current.Response.Redirect("~/Login.aspx");
            }
        }
    }   
}