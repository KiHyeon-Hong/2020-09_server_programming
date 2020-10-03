using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy2
{
    public partial class FrmCircle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void circleButton_Click(object sender, EventArgs e)
        {
            double circleLength = double.Parse(circleText.Text);

            result.Text = Convert.ToString(Math.PI * circleLength * circleLength);
        }
    }
}