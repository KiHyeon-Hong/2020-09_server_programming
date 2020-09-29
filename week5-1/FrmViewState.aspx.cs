using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week5
{
    public partial class FrmViewState : System.Web.UI.Page
    {
        //전역 변수를 사용하겠습니다
        int a = 10;
        int rst = 0;    //public으로 만들기?

        //Page_PreRender 이벤트를 이용해서 만든다... -> Page_Load 발생전에 만들어준다?
        protected void Page_Load(object sender, EventArgs e)
        {
            //처음에 접속이 되면 값을 가져오도록한다
            if(ViewState["rst"] != null)
            {
                //페이지가 만들어지는 상황으로 만든다
                rst = int.Parse(ViewState["rst"].ToString());

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //그냥하면 증분이 되지 않는다
            //class 변수로 사용하기 위해서는 static을 넣었다
            //rst에 대한 부분은...
            //문제는 새탭? -> 똑같은 값을 가지고 있으므로 값을 가져온다 0에서 갑자기 50이 되는 상황이?
            //10부터 다시 시작이 하게 만들고 싶다
            //이런 상태를 해결하기 위해 view 상태를 만들었다 -> postBack이 되는 상황을 가져온다?
            //처음 서버에 접속이 되어져 있는 값을 가져온다
            //처음에 view 상태인지 체크해야한다?
            
            rst += a;
            ViewState["rst"] = rst;

            Response.Write(rst.ToString());
        }
    }
}