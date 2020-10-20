using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermStudy
{
    public partial class FrmPreRender3 : System.Web.UI.Page
    {
        private string[] strArray = new string[7] { "도", "레", "미", "파", "솔", "라", "시" };
        private int note = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (ViewState["note"] != null)
                note = int.Parse(ViewState["note"].ToString());
        }

        protected void btnDown_Click(object sender, EventArgs e)
        {
            note = (note - 1 == -1) ? 6 : note - 1;
            ViewState["note"] = note;

            ShowDisp();
        }

        protected void btnUp_Click(object sender, EventArgs e)
        {
            note = (note + 1 == 7) ? 0 : note + 1;
            ViewState["note"] = note;

            ShowDisp();
        }

        private void ShowDisp()
        {
            lblDisp.Text = strArray[note];
        }
    }
}