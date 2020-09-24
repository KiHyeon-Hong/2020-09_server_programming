using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week3_2
{
    public partial class FrmCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //쿠키 정보를 Write 합시다
            Response.Cookies["Ml"]["strName"] = "길동";
            Response.Cookies["Ml"]["strPhoe"] = "010-1234-5678";
            string strC = Request.Cookies["Ml"].Value;

            Response.Write(strC);
        }
    }
}