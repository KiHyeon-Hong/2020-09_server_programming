using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermStudy
{
    public partial class FrmPreRender : System.Web.UI.Page
    {
        private string[] strArray = new string[] { "도", "레", "미", "파", "솔" , "라", "시"};
        private int note;

        //이벤트 실행 순서 Page_Load -> OnClick -> Page_PreRender

        //처음 웹 페이지 접속 : Page_Load -> Page_PreRender
        //두번째 이벤트부터 : Page_Load -> OnClick -> Page_PreRender

        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("Page_Load");
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            //Response.Write("Page_PreRender");

            ViewState["note"] = note;
        }

        protected void btnDown_Click(object sender, EventArgs e)
        {
            //Response.Write("OnClick");

            note = int.Parse(ViewState["note"].ToString()) - 1;

            if (note < 0)
                note = 6;

            lblDisp.Text = strArray[note];
        }

        protected void btnUp_Click(object sender, EventArgs e)
        {
            //Response.Write("OnClick");

            note = (int.Parse(ViewState["note"].ToString()) + 1 > 6) ? 0 : int.Parse(ViewState["note"].ToString()) + 1;

            lblDisp.Text = strArray[note];
        }
    }
}