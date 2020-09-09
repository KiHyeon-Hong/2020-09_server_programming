using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDisp.Text = "";
        }
        protected void btnCal_Click(object sender, EventArgs e)
        {
            float rad = 0F, rst = 0F;

            rad = float.Parse(txtin.Text);

            //rst = 3.14F * rad * rad;

            rst = (float)(Math.PI * rad * rad);

            lblDisp.Text = "반지름" + rad + "인 원의 넓이는" + rst + "입니다.";
        }
    }
}