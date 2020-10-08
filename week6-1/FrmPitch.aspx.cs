using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week6
{
    public partial class FrmPitch : System.Web.UI.Page
    {
        string[] strArray = new string[7] { "도", "레", "미", "파", "솔", "라", "시" };
        int note = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            //똑같은 이벤트이다?
            //페이지가 열려있을 때 초기에 대한 값을? 저장한다?
            ViewState["note"] = note;
        }

        protected void btnDown_Click(object sender, EventArgs e)
        {
            note = (((int)(ViewState["note"]) - 1) == -1)? 0: (int)(ViewState["note"]) - 1;
            ShowDisp();
        }

        protected void btnUp_Click(object sender, EventArgs e)
        {
            //note = (((int)(ViewState["note"]) + 1) == 7) ? 6 : (int)(ViewState["note"]) + 1;
            //lblDisp.Text = strArray[note];

            note = (int)ViewState["note"] + 1;

            if (note > 6)
                note = 0;
            ShowDisp();
        }

        private void ShowDisp()
        {
            lblDisp.Text = strArray[note];
        }
    }
}

//과제 -> Page_PreRender 사용하지 않고, 똑같이 작동하는 프로그램을 만들어서 사이버 컴퍼스에 제출
//xx.aspx