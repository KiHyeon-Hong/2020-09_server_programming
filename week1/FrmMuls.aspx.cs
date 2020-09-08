using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hello1
{
    public partial class FrmMuls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDisp_click(object sender, EventArgs e)
        {
            
            double tempNum = Convert.ToDouble(num.Text);

            //int tempNum = int.Parse(num.Text);
            //Convert.ToInt32와 같음

            tempNum *= tempNum;

            lblNum.Text = Convert.ToString(tempNum);
        }
    }
}