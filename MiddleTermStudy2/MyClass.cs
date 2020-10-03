namespace MiddleTermStudy2
{
    public partial class FrmTotalStudy
    {
        public class MyClass
        {
            private string name;
            private string breed;

            public MyClass() : this(null, null)
            {

            }

            public MyClass(string name) : this(name, null)
            {

            }

            public MyClass(string name, string breed)
            {
                this.name = name;
                this.breed = breed;
            }

            public void setName(string name)
            {
                this.name = name;
            }
            public void setBreed(string breed)
            {
                this.breed = breed;
            }
            public string getName()
            {
                return name;
            }
            public string getreed()
            {
                return breed;
            }
            public string showDog()
            {
                return name + "(" + breed + ")";
            }
        }
    }
}