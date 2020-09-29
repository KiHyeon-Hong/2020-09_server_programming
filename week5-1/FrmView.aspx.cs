using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week5
{
    public partial class FrmView : System.Web.UI.Page
    {
        string[] strArray = new string[7]{ "도", "레", "미", "파", "솔", "라", "시" };
        int note;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //항성 먼저 실행된다!!!
        protected void Page_PreRender(object sender, EventArgs e)
        {
            ViewState["Note"] = note;
        }

        protected void btnUp_Click(object sender, EventArgs e)
        {
            note = (int)(ViewState["Note"]) + 1;
            note = (note > 6)? 0 : note;
            //up
            lblDisp.Text = strArray[note];
        }

        protected void btnDown_Click(object sender, EventArgs e)
        {
            note = (int)(ViewState["Note"]) - 1;
            if (note < 0)
                note = 6;
            lblDisp.Text = strArray[note];
        }
    }
}

//과제 제출은 교수님이 올려놓은 파일들만 하면 된다
//PreRender 사용하지 않고 만들어 보기