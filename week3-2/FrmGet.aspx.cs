using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week3_2
{
    public partial class FrmGet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //get으로 하면 QueryString으로 값을 가져온다
            Response.Write(Request.QueryString["userId"] + "<br>");
            Response.Write(Request.QueryString["userPwd"] + "<br>");



            //다시 돌려보내기
            //Response.Redirect("HtmlBMI.html");
        }
    }
}