using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hello1
{
    public partial class Hello2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDisplay.Text = "현재시간은 : " + DateTime.Now.ToString();
        }
    }
}