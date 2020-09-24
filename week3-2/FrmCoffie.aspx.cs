using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week3_2
{
    public partial class FrmCoffie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddl.Items.Add(new ListItem("밀크커피", "0"));
                ddl.Items.Add(new ListItem("프림커피", "1"));
                ddl.Items.Add(new ListItem("설탕커피", "2"));
                //ddl.Items.Add(new ListItem("블랙커피", "3"));
            }
        }
        protected void btnExec_click(object sender, EventArgs e)
        {
            ListItem item = ddl.Items[ddl.SelectedIndex];
            int ct = int.Parse(item.Value);

            string filePath = Request.PhysicalApplicationPath + @"APP_Data/";
            string fileName = "";

            Response.Write("<ol>");

            for(int i = 0; i < 3; i++)
            {
                fileName = filePath + i + ".txt";
                Response.WriteFile(fileName);
                //Clear 사용
                if(i != 2 && ((i & ct) == 0 || (i & ct) == 1)) {
                    Response.Clear();   //지워버리고
                }
                Response.Flush();   //남은 부분을 출력해주세요
            }

            Response.Write("</ol>");
        }
    }
}