namespace Customer
{
    public class Customer
    {
        private string name;
        private string number;

        //public string Name {get; set;}
        //public string Number {get; set;}

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

        public string Number
        {
            get
            {
                return number;
            }
            set
            {
                number = value;
            }
        }

        public string showMyClass()
        {
            return name + "(" + number + ")";
        }
    }
}