using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week6
{
    public partial class FrmRst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage != null)
            {
                Response.Write(PreviousPage.gTxtKey);
                string url = "http://www.google.co.kr/search?q=";
                HyperLink1.Text = PreviousPage.gTxtKey + " " + PreviousPage.gFileType;

                url += Server.UrlEncode(HyperLink1.Text);
                HyperLink1.NavigateUrl = url;
            }
        }
    }
}