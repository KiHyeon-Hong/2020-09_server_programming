using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermStudy
{
    public partial class FrmCommand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calc_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "calc")
                myCalc(e.CommandArgument);
            else
                myCancel(e.CommandArgument);
        }

        private void myCancel(object commandArgument)
        {
            num1.Text = "";
            num2.Text = "";
            result.Text = "결과가 표시됩니다";
        }

        private void myCalc(object commandArgument)
        {
            int x = Convert.ToInt32(num1.Text);
            int y = int.Parse(num2.Text);

            //switch (commandArgument)
            //{
            //    case "sum":
            //        result.Text = x + " + " + y + " = " + (x + y);
            //        break;
            //    case "sub":
            //        result.Text = x + " - " + y + " = " + (x - y);
            //        break;
            //    case "mul":
            //        result.Text = x + " * " + y + " = " + (x * y);
            //        break;
            //    case "div":
            //        result.Text = x + " / " + y + " = " + (x / y);
            //        break;

            //}

            if(commandArgument.ToString() == "sum")
            {
                result.Text = x + " + " + y + " = " + (x + y);
            }
            else if (commandArgument.ToString() == "sub")
            {
                result.Text = x + " - " + y + " = " + (x - y);
            }
            else if (commandArgument.ToString() == "mul")
            {
                result.Text = x + " * " + y + " = " + (x * y);
            }
            else if (commandArgument.ToString() == "div")
            {
                result.Text = x + " / " + y + " = " + (x / y);
            }
        }
    }
}