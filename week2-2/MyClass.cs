namespace week2_2
{
    public partial class FrmIntro
    {
        public class MyClass
        {
            private string c_name;
            private string c_num;
            
            //생성자
            public MyClass():this(null, null)
            {

            }
            public MyClass(string name) : this(name, null)
            {

            }
            public MyClass(string name, string num)
            {
                c_name = name;
                c_num = num;
            }


            public void setC_name(string name)
            {
                c_name = name;
            }
            public void setC_num(string num)
            {
                c_num = num;
            }
            public string getC_name()
            {
                return c_name;
            }
            public string getC_num()
            {
                return c_num;
            }

            public string printClass()
            {
                return getC_name() + " : " + getC_num();
            }
        }

    }
}