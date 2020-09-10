namespace week2_2
{
    public partial class FrmIntro
    {
        public struct Dog   //DOG("abc", "def")
        {
            public string name;
            private string breed;

            //
            public Dog(string name = "Default", string breed = "default")
            {
                this.name = name;
                this.breed = breed;
            }

            public string getBreed()
            {
                return breed;
            }

            public void setBreed(string breed)
            {
                this.breed = breed;
            }


            //프로퍼티의 형태로 변경이 가능합니다
            

            public string rstPrint()  //해당하는 부분을 그냥 찍는다, 반환한다
            {
                return name + "(" + breed + ")";
            }
        }

    }
}