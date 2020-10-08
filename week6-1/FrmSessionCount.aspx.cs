using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week6
{
    public partial class FrmSessionCount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cnt"] == null)
                Session["cnt"] = 0;

            int setCnt = (int)Session["cnt"] + 1;
            //int setCnt = Convert.ToInt32(Session["cnt"]) + 1;

            lblDisp.Text = "Session Count : " + setCnt;
            Session["Cnt"] = setCnt;
        }
    }
}