using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermStudy.GetPost
{
    public partial class FrmGetResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink1.Text = Request.QueryString["keyword"] + " ";
            HyperLink1.Text += Request.QueryString["filetype"];

            //Request.Form["keyword"]      post일 경우

            string url = "http://www.google.co.kr/search?q=";
            url += Server.UrlEncode(HyperLink1.Text);
            HyperLink1.NavigateUrl = url;
        }
    }
}