using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week2
{
    public partial class FrmDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCal_Click(object sender, EventArgs e)
        {
            double rad, rst;

            rad = double.Parse(txtin.Text);
            rst = Math.PI * rad * rad;

            lblDisp.Text = "반지름" + rad + "인 원의 넓이는" + rst + "입니다.";
        }
    }
}