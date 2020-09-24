using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class FrmServer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //들어가 있는대로 나옴
            Response.Write(Server.HtmlEncode("http://www.daum.net"));
            Response.Write("<br>");
            //이상한 연결코드?
            Response.Write(Server.UrlEncode("http://www.daum.net"));
        }
        protected void Button1_click(object sender, EventArgs e)
        {
            //제어권을 넘겨버린다
            //URL을 보면 바뀐다
            Response.Redirect("CoffieRecipy.aspx");
        }
        protected void Button2_click(object sender, EventArgs e)
        {
            //넘겨줘도 제어권은 넘기지 않는다
            //URL을 보면 바뀌지 않는다
            Server.Transfer("CoffieRecipy.aspx");
        }
    }
}