using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy2
{
    public partial class FrmCommand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "calsClick")
                Cal_Func(e.CommandArgument);
        }

        private void Cal_Func(object commandArgument)
        {
            int in1 = int.Parse(TextBox1.Text);
            int in2 = int.Parse(TextBox2.Text);

            if ((string)commandArgument == "plus")
                lblDisp.Text = Convert.ToString(in1 + " + " + in2 + " = " + (in1 + in2));
            else if ((string)commandArgument == "mul")
                lblDisp.Text = Convert.ToString(in1 + " x " + in2 + " = " + (in1 * in2));
            else
                lblDisp.Text = "연산이 없습니다";
        }
    }
}