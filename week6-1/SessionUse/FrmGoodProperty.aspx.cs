using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week6.SessionUse
{
    public partial class FrmGoodProperty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GoodPro prod1 = new GoodPro();
                prod1.Name = "컴퓨터";
                prod1.Manufacture = "삼성전자";
                prod1.Cost = 1800000;

                GoodPro prod2 = new GoodPro();
                prod2.Name = "비행기";
                prod2.Manufacture = "보잉";
                prod2.Cost = 20000000;

                Session["prodpro1"] = prod1;
                Session["prodpro2"] = prod2;

                ListBox1.Items.Add(prod1.Name);
                ListBox1.Items.Add(prod2.Name);
            }
        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            //string key = "prodpro" + (ListBox1.SelectedIndex + 1).ToString();

            GoodPro prod = (GoodPro)Session["prodpro" + (ListBox1.SelectedIndex + 1).ToString()];

            lblDisp.Text = "상품명 : " + prod.Name + "<br />";
            lblDisp.Text += "제조사 : " + prod.Manufacture + "<br />";
            lblDisp.Text += "상품 가격 : " + prod.Cost;
        }
    }
}