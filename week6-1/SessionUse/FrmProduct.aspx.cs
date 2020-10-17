using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week6.SessionUse
{
    public partial class FrmProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //text와 value
                ListBox1.Items.Add(new ListItem("카메라", "100000"));
                ListBox1.Items.Add(new ListItem("키보드", "10000"));
                ListBox1.Items.Add(new ListItem("모니터", "50000"));


            }
        }

        protected void btnExec_Click(object sender, EventArgs e)
        {


            lblDisp.Text = "상품명 : " + ListBox1.SelectedItem + "<br />";
            lblDisp.Text += "상품 가격 : " + ListBox1.SelectedValue + "<br />";
            //Session.Mode는 된다... 정도만
            lblDisp.Text += "Session Mode : " + Session.Mode.ToString();
        }
    }
}