namespace MiddleTermStudy
{
    public partial class TotalStudy
    {
        public class MyClass
        {
            private string name;
            private string num;
            public string Name {
                get
                {
                    return name;
                }
                set
                {
                    name = value;
                }
            }
            public string Num
            {
                get
                {
                    return num;
                }
                set
                {
                    num = value;
                }
            }

            public string printMyClass()
            {
                return name + " : " + num;
            }
        }
    }
}