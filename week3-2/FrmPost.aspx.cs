using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week3_2
{
    public partial class FrmPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Post로 보내면 Request.Form으로 받는다
            string userId = Request.Form["userId"];
            string userPwd = Request.Form["userPwd"];

            Response.Write("아이디 : " + userId + "<br>");
            Response.Write("비밀번호 : " + userPwd + "<br>");
        }
    }
}