using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week3_2
{
    public partial class frmRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ApplicationPAth에 대한 부분이 돌았다?
            //물리적 경로는 루트이다? 가상 경로와 똑같이 만들어진다
            Response.Write("물리적 디렉토리" + Request.ApplicationPath + "<br>");
            //실제 디스크상의 경로
            Response.Write("사용자 물리적경로" + Request.PhysicalApplicationPath + "<br>");

            Response.Write("전체 url" + Request.Url + "<br>");
            Response.Write("브라우저" + Request.Browser + "<br>");
            Response.Write("전송 총 바이트 수" + Request.TotalBytes + "<br>");
        }
    }
}