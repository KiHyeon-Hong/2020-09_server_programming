namespace MiddleTermStudy2
{
    public partial class FrmTotalStudy
    {
        public struct Dog
        {
            private string name;
            private string breed;

            public Dog(string name, string breed)
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