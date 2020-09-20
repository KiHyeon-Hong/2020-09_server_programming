using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class FrmGet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["userId"];
            string pwd = Request.QueryString["userPwd"];
            

            if (id.Equals("admin") && pwd.Equals("admin"))
            {
                Response.Write("환영합니다");
            }
            else
            {
                Response.Redirect("HtmlInput.html");
            }
        }
    }
}