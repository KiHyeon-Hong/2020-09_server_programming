using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy2
{
    public partial class FrmButtonTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sortClick(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sort")
                Sort_List((string)e.CommandArgument);
            else
                lblDisp.Text = "commandName이 없습니다";
        }

        private void Sort_List(string commandArgument)
        {
            switch (commandArgument)
            {
                case "asc":
                    lblDisp.Text = "오름차순으로 수행합니다";
                    break;
                case "desc":
                    lblDisp.Text = "내림차순으로 수행합니다";
                    break;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://naver.com");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            lblDisp.Text = "그림 위(" + e.X.ToString() + ", " + e.Y.ToString() + ") 을 클릭하였습니다.";
        }
    }
}