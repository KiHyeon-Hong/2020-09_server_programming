using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace week3_2
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //Application.UnLock();
            //Response.Write(Application["totCnt"].ToString());
            //Response.Write("번째 고객입니다.");
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            //count 등을 넣는다
            if (Application["totCnt"] == null)
            {
                Application["totCnt"] = "0";
            }
            //동시에 사용할 수 없도록 LOCK을 걸어둬야 함
            Application.Lock();
            string strGetCnt = Convert.ToString(Application["totCnt"]);
            int iSetCnt = Convert.ToInt32(strGetCnt) + 1;
            Application["totCnt"] = Convert.ToString(iSetCnt);
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            //페이지를 넘어가도 계속 남아 있는다
            Response.Write("TearMoon<br>");
            Response.Write("<hr>");
        }
        protected void Application_EndRequest(object sender, EventArgs e)
        {
            //페이지를 넘어가도 계속 남아 있는다
            //밑에 남는다
            Response.Write("<hr>");
            Response.Write("TearMoon<br>");
            Response.Write(DateTime.Now.ToString());
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}