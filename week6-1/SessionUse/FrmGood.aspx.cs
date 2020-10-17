using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week6.SessionUse
{

    public partial class FrmGood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                good prod1 = new good("자전거", "삼천리", 100000);
                good prod2 = new good("자동차", "현대", 10000000);
                good prod3 = new good("노트북", "LG", 1000000);

                Session["prod1"] = prod1;
                Session["prod2"] = prod2;
                Session["prod3"] = prod3;

                ListBox1.Items.Add(prod1.Name);
                ListBox1.Items.Add(prod2.Name);
                ListBox1.Items.Add(prod3.Name);
            }
        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            string key = "Prod" + (ListBox1.SelectedIndex + 1).ToString();
            good prod = (good)Session[key];

            lblDisp.Text = "상품명 : " + prod.Name + "<br />";
            lblDisp.Text += "제조사 : " + prod.Manufacture + "<br />";
            lblDisp.Text += "상품 가격 : " + prod.Cost;
        }
    }
}