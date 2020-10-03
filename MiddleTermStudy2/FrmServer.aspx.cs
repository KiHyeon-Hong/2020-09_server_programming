using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy2
{
    public partial class FrmServer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmCoffee.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("FrmCoffee.aspx");
        }
    }
}