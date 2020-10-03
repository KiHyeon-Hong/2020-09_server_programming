using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy2
{
    public partial class FrmTotalStudy : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            UserType ut = UserType.Admin;
            ShowResult(ut.ToString() + " : " + (int)ut);

            Dog dog = new Dog();
            dog.setName("TearMoon");
            dog.setBreed("TearMoon Empire");
            ShowResult(dog.showDog());

            Response.WriteFile("./App_Data/test.txt");

            string filePath = Request.PhysicalApplicationPath + @"App_Data\";
            string fileName = filePath + "test.txt";
            Response.WriteFile(fileName);

            int[] intArray = new int[3];
            ShowResult(intArray[0].ToString());

            int[] intArray1 = new int[3] { 20, 10, 30 };
            ShowResult(intArray1[0].ToString());

            int[,] intArr = new int[2, 3] { {10, 20, 30 }, {40, 50, 60 } };
            string[] stringArr = new string[3]{"one", "two", "three" };

            for (int i = 0; i < stringArr.Length; i++)
                ShowResult(stringArr[i]);

            Array.Sort(intArray1);
            foreach(int num in intArray1) {
                ShowResult(num.ToString());
            }

            int[] copyIntArray = (int[])intArray1.Clone();

            int idx = Array.IndexOf(intArray1, 20);
            ShowResult(idx.ToString() + "에 있습니다");

            ShowResult("<br />");

            try
            {
                int error = int.Parse("a");
            }
            catch (Exception exception)
            {
                ShowResult(exception.Message);
            }
            finally
            {
                ShowResult("try문 종료");
            }


        }

        void ShowResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br />";
        }
    }
}