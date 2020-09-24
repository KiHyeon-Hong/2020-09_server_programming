using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class CoffieRecipy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CoffeType.Items.Add(new ListItem("밀크커피", "0"));
                CoffeType.Items.Add(new ListItem("프림커피", "1"));
                CoffeType.Items.Add(new ListItem("설탕커피", "2"));
                CoffeType.Items.Add(new ListItem("블랙커피", "3"));
            }
        }
        protected void Show_serveClick(object sender, EventArgs e)
        {
            string filePath = Request.PhysicalApplicationPath + @"App_data/";
            string fileName = "";

            Response.Write("<ol>");

            ListItem item = CoffeType.Items[CoffeType.SelectedIndex];
            int coffeType = int.Parse(item.Value);

            for(int i = 0; i < 4; i++)
            {
                fileName = filePath + i + ".txt";
                Response.WriteFile(fileName);

                if (i != 3 && ((i & coffeType) == 1 || (i & coffeType) == 2))
                    Response.Clear();
                Response.Flush();
            }
            Response.Write("</ol>");
        }
    }
}