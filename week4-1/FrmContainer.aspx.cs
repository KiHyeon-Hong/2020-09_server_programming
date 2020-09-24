using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week4
{
    public partial class FrmContainer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedIndex == 0)
            {
                MultiView1.ActiveViewIndex = 0;
            }
            else if(RadioButtonList1.SelectedIndex == 1)
            {
                MultiView1.ActiveViewIndex = 1;
            }
        }
    }
}