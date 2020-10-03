using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy2
{
    public partial class FrmCoffee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                coffeeType.Items.Add(new ListItem("밀크커피", "0"));
                coffeeType.Items.Add(new ListItem("프림커피", "1"));
                coffeeType.Items.Add(new ListItem("설탕커피", "2"));
                coffeeType.Items.Add(new ListItem("블랙커피", "3"));
            }
        }

        protected void showRecipy_ServerClick(object sender, EventArgs e)
        {
            string filePAth = Request.PhysicalApplicationPath + @"App_Data\";
            string fileName = "";

            Response.Write("<ol>");

            ListItem item = coffeeType.Items[coffeeType.SelectedIndex];
            int coffee = int.Parse(item.Value);

            for(int i = 0; i < 4; i++)
            {
                fileName = filePAth + i + ".txt";
                Response.WriteFile(fileName);

                if (i != 3 && ((i & coffee) == 1 || (i & coffee) == 2))
                    Response.Clear();
                Response.Flush();
            }

            Response.Write("</ol>");
        }
    }
}