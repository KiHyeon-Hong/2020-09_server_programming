using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class TotalStudy1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Customer cs = new Customer();
            BestCustomer bc = new BestCustomer();

            Customer bc1 = new BestCustomer();
            bc.Name = "TearMoon";
            bc.Num = "15";
            ShowResult(bc.print());
        }
        private void ShowResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br>";
        }
    }
}