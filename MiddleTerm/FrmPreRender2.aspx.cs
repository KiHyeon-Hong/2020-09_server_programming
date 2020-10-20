using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermStudy
{
    public partial class FrmPreRender2 : System.Web.UI.Page
    {
        private string[] strArray = new string[] { "도", "레", "미", "파", "솔", "라", "시"};
        private int note = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ViewState["note"] = 0;
        }

        protected void btnDown_Click(object sender, EventArgs e)
        {
            note = int.Parse(ViewState["note"].ToString());
            note -= 1;

            if (note < 0)
                note = 6;

            ViewState["note"] = note;

            lblDisp.Text = strArray[note];
        }

        protected void btnUp_Click(object sender, EventArgs e)
        {
            note = int.Parse(ViewState["note"].ToString());
            note += 1;

            if (note > 6)
                note = 0;

            ViewState["note"] = note;

            lblDisp.Text = strArray[note];
        }
    }
}