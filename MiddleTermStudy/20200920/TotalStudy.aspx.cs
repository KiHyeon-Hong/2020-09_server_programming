using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class TotalStudy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int adc = 1;
            string name = "TearMoon";

            ShowResult(adc.ToString());
            ShowResult(name);

            userType ut = userType.Admin;
            ShowResult(ut + " : " + (int)ut);

            Response.Write("Response.Write() 메소드<br>");

            string filePath = Request.PhysicalApplicationPath + @"App_Data\";
            string fileName = filePath + "test.txt";
            Response.WriteFile(fileName);

            //배열
            int[] intArray = new int[] { 10, 20, 30 };
            int[,] intArr = new int[,] { { 10, 20, 30 }, { 40, 50, 60 } };

            Array.Sort(intArray);
            ShowResult(Array.IndexOf(intArray, 20).ToString());

            int sum = 0;
            foreach(var item in intArr)
            {
                sum += item;
            }
            ShowResult(sum.ToString());

            MyClass mc = new MyClass();
            mc.Name = "TearMoon";
            mc.Num = "12";
            ShowResult(mc.printMyClass());

            MyClass[] mcs = new MyClass[3];

            for (int i = 0; i < mcs.Length; i++)
                mcs[i] = new MyClass();

            mcs[0].Name = "Mia Luna TearMoon";
            mcs[0].Num = "12";
            mcs[1].Name = "GreenMoon";
            mcs[1].Num = "15";
            mcs[2].Name = "RedMoon";
            mcs[2].Num = "18";

            foreach(var item in mcs)
            {
                ShowResult(item.printMyClass());
            }
        }

        private void ShowResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br>";
        }
    }
}