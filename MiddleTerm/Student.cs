namespace TermStudy
{
    public class Student
    {
        private string name;
        private string grade;
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

        public string Grade
        {
            get
            {
                return grade;
            }
            set
            {
                //grade = value;
                if (int.Parse(value) / 10 >= 9)
                    grade = "A";
                else if (int.Parse(value) / 10 >= 8)
                    grade = "B";
                else if (int.Parse(value) / 10 >= 7)
                    grade = "C";
                else if (int.Parse(value) / 10 >= 6)
                    grade = "D";
                else
                    grade = "F";
            }
        }

        public string printInfo()
        {
            return name + "(" + grade + ")";
        }
    }
}