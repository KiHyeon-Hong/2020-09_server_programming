using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy2
{
    public partial class FrmVaild : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExec_click(object sender, EventArgs e)
        {

        }

        protected void valNum(object source, ServerValidateEventArgs args)
        {
            int chkDigit = 0;
            int weight = 2;

            for (int i = 0; i < 13; i++)
            {
                if (i == 6)
                    continue;

                chkDigit += int.Parse(regident.Text.Substring(i, 1)) * weight;
                weight++;

                if (weight > 9)
                    weight = 2;
            }

            chkDigit = (11 - (chkDigit % 11)) % 10;

            if (int.Parse(regident.Text.Substring(13, 1)) == chkDigit)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void btnCancel_click(object sender, EventArgs e)
        {
            name.Text = "";
            pwd.Text = "";
            age.Text = "";
            email.Text = "";
            regident.Text = "";
            rpwd.Text = "";
        }
    }
}