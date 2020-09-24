using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class FrmCircle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lblButton_click(object sender, EventArgs e)
        {
            double circle = double.Parse(lblText.Text);
            circle = circle * circle * Math.PI;
            lblLabel.Text = circle + "입니다";
        }
    }
}