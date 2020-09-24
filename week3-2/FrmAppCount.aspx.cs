using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week3_2
{
    public partial class FrmAppCount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //count 등을 넣는다
            /*
             * 
            if (Application["totCnt"] == null)
            {
                Application["totCnt"] = "0";
            }
            //동시에 사용할 수 없도록 LOCK을 걸어둬야 함
            Application.Lock();
            string strGetCnt = Convert.ToString(Application["totCnt"]);
            int iSetCnt = Convert.ToInt32(strGetCnt) + 1;
            Application["totCnt"] = Convert.ToString(iSetCnt);
            Application.UnLock();
            */
            Response.Write(Application["totCnt"].ToString());
            Response.Write("번째 고객입니다.");
        }
    }
}