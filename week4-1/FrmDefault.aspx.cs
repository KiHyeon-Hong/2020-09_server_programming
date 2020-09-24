using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week4
{
    public partial class FrmDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDisp.Text = "";
        }

        protected void RadioButtons_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        //
        protected void Comm_Exec(object sender, CommandEventArgs e)
        {
            //버튼 2개 중 어느것을 사용할지 결정을 해야한다
            if (e.CommandName == "Sort")
                Sort_List((string)e.CommandArgument);
            else
                lblDisp.Text = "commandName이 없습니다";
        }

        private void Sort_List(string commandArgument)
        {
            switch (commandArgument)
            {
                case "Ascending":
                    lblDisp.Text = "오름차순으로 수행합니다";
                    break;
                case "Descending":
                    lblDisp.Text = "내림차순으로 수행합니다";
                    break;
            }
        }

        protected void LinkButton_click(object sender, EventArgs e)
        {
            Response.Redirect("http://naver.com");
        }
        

        protected void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            lblDisp.Text = "그림 위(" + e.X.ToString() + ", ";
            lblDisp.Text += e.Y.ToString() + ") 을 클릭하였습니다";
        }
    }
}