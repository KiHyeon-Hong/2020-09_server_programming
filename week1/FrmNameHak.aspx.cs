using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hello1
{
    public partial class FrmNameHak : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int rst = 10;
            rst *= rst;

            name.Text = "홍기현";

            //값에 대한 부분으로 만들고 싶다
            //정수를 convert로 string 형태로 바꿔야 함
            //전부 텍스트 형태이므로 텍스트 박스로 받는다.
            hak.Text = Convert.ToString(rst);
        }
    }
}