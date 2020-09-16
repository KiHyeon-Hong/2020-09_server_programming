using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//visual C#의 클래스로 만들자

namespace week3
{
    public class MyClass
    {
        //이름하고 주소를 멤버 변수
        private string name;
        private string addr;

        public MyClass() :this(null, null)
        {
            //생성자를 통하여 0개, 1개, 2개가 입력되도 처리 가능하도록한다
            //생성자에 대한 부분을 여러개 만들면 된다
        }

        public MyClass(string name) : this(name, null)
        {

        }

        public MyClass(string name, string addr)
        {
            this.name = name;
            this.addr = addr;
        }

        //생성자 형태
        /*
        public void setName(string name)
        {
            this.name = name;
        }
        public void setAddr(string addr)
        {
            this.addr = addr;
        }

        public string getName()
        {
            return name;
        }

        public string getAddr()
        {
            return addr;
        }
        */

        //property형태로 만들기
        //메소드인데 변수의 값을 받도록 함
        
        public string Name
        {
            get { return name; }
            set { name = value; }   //value는 외부에서 받아온 값이다!!! 스스로 생성됨
        }

        public string Addr
        {
            get { return addr; }
            set { addr = value; }   //value는 외부에서 받아온 값이다!!! 스스로 생성됨
        }
        

        //property 두개의 모양이 같으므로, 변경 가능합니다
        //?? 제대로 알아보자
        //public string Name { get; set; }
        //public string Addr { get; set; }

        //멤버변수를 사용할수 있는 메소드
        public string c_Print()
        {
            return name + "(" + addr + ")";
        }

    }
}