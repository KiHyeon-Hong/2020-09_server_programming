using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week6
{
    public partial class FrmApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["cnt"] == null)
                Application["cnt"] = 0;

            Application.Lock();

            int setCnt = (int)Application["cnt"] + 1;
            Application["cnt"] = setCnt;

            Application.UnLock();

            lblDisp.Text = "전체 카운트 : " + setCnt;

            //껐다 켜져도 유지되려면? 데이터베이스나, 파일 형태로 저장하면 된다
        }
    }
}