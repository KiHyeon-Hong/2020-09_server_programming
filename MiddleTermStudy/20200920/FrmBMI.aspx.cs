using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class FrmBMI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Calc_ServerClick(object sender, EventArgs e)
        {
            Result.InnerText = "result : " + myText.Value;
        }
    }
}