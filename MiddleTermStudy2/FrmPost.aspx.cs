using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy2
{
    public partial class FrmPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("name : " + Request.Form["name"] + "<br />");
            Response.Write("addr : " + Request.Form["addr"]);
        }
    }
}