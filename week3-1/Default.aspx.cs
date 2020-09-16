using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Schema;

namespace week3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //class 만든 것을 가져다 쓰자
            MyClass mc = new MyClass("Einherjar");
            mc.c_Print();
            //public으로 만들었기 때문에 전부 보인다
            //메소드는 사용되므로 public으로 해도 되지만, 멤버변수 부분은 private으로 하자

            //생성자 형태
            //mc.setName("Mia Luna Tearmoon");
            //mc.setAddr("Tearmoon empire");

            mc.Name = "Mia Luna Tearmoon";
            mc.Addr = "Tearmoon empire";

            showResult(mc.c_Print());

            //class에 대한 부분을 여러개 만들고, 찍어낼수도 있음 -> 생성자가 필요함
            //getter와 setter도 만들어 보자

            //getter, setter의 역할을 하는 프로퍼티를 만들어보자


            Customer cs = new Customer();
            BestCustomer bc = new BestCustomer();
            //BestCustomer는 상위 class가 가진 자산을 전부 받아서 사용이 가능합니다
            Customer bc1 = new BestCustomer();

            //BestCustomer는 자신것 뿐만이 아니라 상속을 받은 Customer의 자산도 사용이 가능

        }

        public void showResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br>";
        }
    }
}