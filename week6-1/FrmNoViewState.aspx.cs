using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week6
{
    public partial class FrmNoViewState : System.Web.UI.Page
    {
        int a = 10;
        int result = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(ViewState["result"].ToString());
            //ViewState는 새 웹페이지 열릴때마다 ID를 할당해준다
            if(ViewState["result"] != null)
            {
                //현재 상태를 저장한다
                result = int.Parse(ViewState["result"].ToString());

            }
        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            //값을 계속 더해주라는 의미?
            //하지만 되지 않는다
            //result += a;
            //lblDisp.Text = result.ToString();
            //클래스 변수로 넣어줘야 한다. static
            //그러나 static으로 해버리면 다른 웹페이지에서도 반영된 값으로 나오게 된다.



            result += a;
            ViewState["result"] = result;
            lblDisp.Text = result.ToString();

            //ViewState 각각 현 상황을 저장하고 있다가 상황에 대한 부분을 보여주게끔 만들어준다
            //개인이 사용하는 프로그램이면 필요없지만!!! 웹 프로그래밍이기 때문에 필요하다
            //ViewState 이용해서 정보를 View 상태에 저장한다
            //각기 다른 값을 저장할 수 있도록 만들어준다

            //프리랜더 이벤트 사용해보자? - 지금 소스는 프리랜더를 사용하지 않았다
            //html에서 ViewState는 hidden 태그로 표현된다?
        }
    }
}