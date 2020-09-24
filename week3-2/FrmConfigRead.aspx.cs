using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week3_2
{
    public partial class FrmConfigRead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //System web Configuration에 대한 부분을 사용합니다
            //web.Config의 appSettings에서 정의한 key와 value 값을 가져올 수 있음
            lblDisp1.Text = WebConfigurationManager.AppSettings["Make_Name"].ToString();
            lblDisp2.Text = WebConfigurationManager.AppSettings["sosok"].ToString();
            //name이 ConnectionStrings으로 했기 때문에!!!
            lblDisp3.Text = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }
    }
}