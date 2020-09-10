using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week2_2
{
    public partial class FrmIntro : System.Web.UI.Page
    {
        //추가 - 클래스로 가능
        //조각 프로그램 - 우클릭 - 짧은 작업 및 리펙토링 하면 user-type.cs 변경 누르면, usertype이 만들어짐
        public enum UserType1
        {
            //값을 재정의하면 다음 데이터는 그 다음 값으로 재정의 된다
            Admin, Master, Guest
        }

        //구조체
        //멤버변수, 생성자, 메소드 전부 들어가는 클래스의 형태
        //마찬가지로 cs로 뺍시다
        public struct Dog1
        {

        }

        //class
        //마찬가지로 cs로 뺍시다
        public class MyClass1
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            int abc = 1;

            string name = "OK";

            ShowResult(abc.ToString()); //int이므로 string으로 convert
            ShowResult(name);

            //usertype 사용
            UserType ut = UserType.Admin;
            ShowResult(ut.ToString() + " : " + (int)ut);

            //구조체 사용
            //struct, class에서 private으로 변수 선언 시 보이지 않음, 게터세터를 만들어야 함
            Dog dog = new Dog();
            dog.name = "TearMoon";
            dog.setBreed("NO");
            ShowResult(dog.rstPrint());

            //사실 구조체로 만들지 않고 전부 class로 해서 만든다!
            //게터와 세터를 만들지 않고... 프로퍼티의 형태로 만들수 있음


            //파일의 내용을 읽어서 화면에 뿌려주기
            //Response.WriteFile("a.txt");

            //폴더들로도 구성 가능합니다
            //우클릭 - 추가 - 새폴더(ASP.NET 폴더 추가 - APP_Data)
            //a.txt 우클릭 후 프로젝트에 포함?
            Response.WriteFile("./App_Data/a.txt");

            //@문자열esc
            //메소드를 연결해서 path 연결을 해야함
            string filePath = Request.PhysicalApplicationPath + @"App_Data\";
            string fileName = filePath + "a.txt";

            Response.WriteFile(fileName);


            //배열
            //초기화를 하지 않으면 0이 출력이 됨
            int[] intArray = new int[3];
            ShowResult(intArray[0].ToString());

            int[] intArray1 = new int[3] { 10, 5, 30};
            ShowResult(intArray1[0].ToString());

            //int[][] intArr = new int[2][3]{ { 10, 20, 30 }, { 40, 50, 60 } };
            //오류가 발생함
            int[,] intArr = new int[2, 3] { { 10, 20, 30 }, { 40, 50, 60 } };

            //배열의 반복
            //배열에 대한 부분은 반복이 존재함
            string[] stringArray = new string[3] { "one", "two", "three"};
            
            for(int i = 0; i < stringArray.Length; i++)
                ShowResult(stringArray[i]);

            //합산해서 출력
            //for (int i = 0; i < intArr.Length; i++)
            //    for (int j = 0; j < intArr[i].Length; j++)

            int sum = 0;
            for (int i = 0; i < intArray1.Length; i++)
                sum += intArray1[i];
            ShowResult(intArray1.ToString() + "의 합은" + sum.ToString());

            //배열의 sort 사용
            Array.Sort(intArray1);
            for (int i = 0; i < intArray1.Length; i++)
                ShowResult(intArray1[i].ToString());


            //Clone 사용
            int[] c_intArray = (int[])intArray1.Clone();


            int idx = Array.IndexOf(intArray1, 5);
            ShowResult(idx.ToString());

            sum = 0;
            //foreach문
            //type을 var로 하면... string, int등을 전부 포괄할 수 있다
            //foreach를 쓰고 텝 2번 눌러서 만들수도 있음
            foreach(var item in intArray1)
            {
                //item++같은 수식은 불가능합니다
                sum += item;
            }
            ShowResult(sum.ToString());


            //try, catch, finally문
            try
            {
                int iint = int.Parse("a");
            }
            catch (Exception exception)
            {
                ShowResult(exception.Message);
            }
            finally
            {
                ShowResult("try문 종료");
            }


            //class 사용
            MyClass mc = new MyClass();
            mc.setC_name("TearMoon");
            mc.setC_num("123");
            ShowResult(mc.printClass());

            //프로퍼티를 이용해서 getter와 setter를 대신할 수 있다
            //나머지에 대한 부분은 추가적으로 해본다

            //namespace 만들어 사용하는 법 등...
            //using을 이용하여 class 정의된 기능을 사용할 수 있음
        }
        void ShowResult(string result)
        {
            Label lblResult = new Label();
            // 이 인스턴스에 대한 부분을 계속 추가해주자
            //객체를 1개 만들었는데 객체가 여러 페이지 만들어져도 해당 페이지 더해주자

            Page.Controls.Add(lblResult);
            //이 부분이 추가?

            lblResult.Text = result + "<br>";
            //한칸씩 띄우겠다
            //메소드를 활용해서 찍겠다
            //그렇지 않으면 lable을 해당하는 숫자만큼 만들어서 사용해야 한다
            //자동 생성!

            //환경에 대한 부분을 만들어 놓고...
            

        }

    }
}