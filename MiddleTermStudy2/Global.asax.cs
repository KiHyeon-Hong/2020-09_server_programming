﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace MiddleTermStudy2
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            Response.Write("TearMoon<br>");
            Response.Write("<hr>");

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
        }

        protected void Application_EndRequest(object sender, EventArgs e)
        {
            Response.Write("<hr>");
            Response.Write("TearMoon<br>");
            Response.Write(Application["totCnt"]);
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