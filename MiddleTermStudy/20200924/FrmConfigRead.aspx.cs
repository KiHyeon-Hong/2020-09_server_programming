using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class FrmConfigRead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDisp1.Text = WebConfigurationManager.AppSettings["name"].ToString();
            lblDisp2.Text = WebConfigurationManager.AppSettings["addr"].ToString();

            lblDisp3.Text = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }
    }
}