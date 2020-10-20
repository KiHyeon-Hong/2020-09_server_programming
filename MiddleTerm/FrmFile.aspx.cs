using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermStudy
{
    public partial class FrmFile : System.Web.UI.Page
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
            string filePath = Request.PhysicalApplicationPath + @"Data\";
            //string filePath = @"./Data\";
            //string filePath = @"~/Data\";
            //string filePath = "~/Data/";

            string fileName = "";

            Response.Write("<ol>");

            ListItem item = coffeeType.Items[coffeeType.SelectedIndex]; // 0

            //Response.Write(item); 밀크커피
            //Response.Write(item.Text + "<br />"); 밀크커피

            int coffee = int.Parse(item.Value);

            for(int i = 0; i < 4; i++)
            {
                fileName = filePath + i + ".txt";
                Response.WriteFile(fileName);
                //Response.Write(fileName);     C:\Users~

                if (i != 3 && ((i & coffee) == 1 || (i & coffee) == 2))
                    Response.Clear();   //현재 버퍼의 내용을 비운다
                Response.Flush();       //현재 버퍼의 내용을 출력한다
            }

            Response.Write("</ol>");
        }
    }
}