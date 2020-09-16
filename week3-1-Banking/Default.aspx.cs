using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banking
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Customer cs = new Customer();

            //아니면 using Medical을 사용합니다
            Medical.MedicalCustomer mc = new Medical.MedicalCustomer();

            cs.setM_name("홍길동");
            ShowResult(cs.getM_name());

            mc.RegisterCustomer("Tearmoon");
            ShowResult(mc.GetName());
        }

        void ShowResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br>";
        }
    }
}