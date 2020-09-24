namespace MiddleTermStudy
{
    public partial class TotalStudy1
    {
        public class Customer
        {
            private string name;
            private string num;

            public string Name
            {
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

            public int makeAccount(int atype)
            {
                return atype;
            }
            public string print()
            {
                return name + " : " + num;
            }
        }
    }
}