using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class FrmMuls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDisp_click(object sender, EventArgs e)
        {
            double myNum = Convert.ToDouble(num.Text);
            myNum *= myNum;
            lblNum.Text = myNum.ToString();
        }
    }
}