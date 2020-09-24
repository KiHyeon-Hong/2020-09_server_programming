using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class FrmCommandClick : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClick(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "one")
                printOneNum((string)e.CommandArgument);
            else if(e.CommandName == "two")
                printTwoNum((string)e.CommandArgument);

        }

        private void printOneNum(string commandArgument)
        {
            if (commandArgument == "min")
                lblDisp.Text = "0";
            else
                lblDisp.Text = "9";
        }

        private void printTwoNum(string commandArgument)
        {
            if (commandArgument == "min")
                lblDisp.Text = "10";
            else
                lblDisp.Text = "99";
        }

        protected void linkClick(object sender, EventArgs e)
        {
            Response.Redirect("https://naver.com");

        }

        protected void imgClick(object sender, ImageClickEventArgs e)
        {
            lblDisp.Text = "그림 위(" + e.X.ToString() + ", ";
            lblDisp.Text += e.Y.ToString() + ") 을 클릭하였습니다";

        }


    }
}