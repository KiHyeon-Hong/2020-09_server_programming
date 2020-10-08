using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week6
{
    public partial class FrmValid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            Response.Write("d입력이 완료되었습니다");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int chkDigit = 0;
            int weight = 2;

            for (int i = 0; i < 13; i++)
            {
                if (i == 6)
                    continue;
                chkDigit += int.Parse(txtJumin.Text.Substring(i, 1)) * weight;
                weight++;

                if (weight > 9) weight = 2;
            }

            chkDigit = (11 - (chkDigit % 11)) % 10;

            if (int.Parse(txtJumin.Text.Substring(13, 1)) == chkDigit)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtAge.Text = "";
            txtEmail.Text = "";
            txtId.Text = "";
            txtJumin.Text = "";
            txtPwd.Text = "";
            txtRPwd.Text = "";
            SetFocus(txtId);
        }
    }
}