using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week2_2
{
    public partial class Default_html : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnArea_Click(object sender, EventArgs e)
        {
            int width, height, rst;

            width = int.Parse(txtWidth.Text);
            height = int.Parse(txtLength.Text);

            rst = width * height;

            lblOutput.Text = "짃각형의 넓이는 " + rst.ToString() + " 입니다.";
        }
    }
}