using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week3_2
{
    public partial class FrmResponse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void btn_click(object sender, EventArgs e)
        {
            Response.WriteFile("./App_Data/testFile.txt");

            //파일의 경로 만들기
            string filePath = Request.PhysicalApplicationPath + @"App_Data/";
            string fileName = filePath + "testFile.txt";
            Response.WriteFile(fileName);
        }
        protected void btn_link(object sender, EventArgs e)
        {
            //Redirect 많이 사용함
            Response.Redirect("FrmBMI.aspx");
        }
    }
}