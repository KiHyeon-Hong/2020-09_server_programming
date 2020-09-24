using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class FrmCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cookies["MI"]["strName"] = "TearMoon";
            Response.Cookies["MI"]["strPhoe"] = "010-6605-5379";
            string strc = Request.Cookies["MI"].Value;

            Response.Write(strc);
        }
    }
}