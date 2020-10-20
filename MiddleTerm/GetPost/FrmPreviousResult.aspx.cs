using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermStudy.GetPost
{
    public partial class FrmPreviousResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = "http://www.google.co.kr/search?q=";
            HyperLink1.Text = PreviousPage.Keywork + " " + PreviousPage.fileType;

            url += Server.UrlEncode(HyperLink1.Text);
            HyperLink1.NavigateUrl = url;
        }
    }
}