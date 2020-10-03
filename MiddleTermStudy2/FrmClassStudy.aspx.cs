using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy2
{
    public partial class FrmClassStudy : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Customer.BsetCustomer bc = new Customer.BsetCustomer();
            bc.Name = "TearMoon";
            bc.Number = "TearMoon Empire";

            showResult(bc.showBestCustomer());
        }
        public void showResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br>";
        }
    }
}