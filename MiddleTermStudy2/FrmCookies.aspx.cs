using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy2
{
    public partial class FrmCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cookies["mia"]["name"] = "Mia Luna TearMoon";
            Response.Cookies["mia"]["addr"] = "TearMoon Empire";

            Response.Cookies["lappland"]["name"] = "lappland";
            Response.Cookies["lappland"]["addr"] = "siracusa";

            Response.Write(Request.Cookies["mia"].Value);
            Response.Write(Request.Cookies["lappland"].Value);
        }
    }
}