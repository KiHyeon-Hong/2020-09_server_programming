namespace week6.SessionUse
{
    public class good
    {
        //원래는 private를 해야 합니다
        //게터와 세터를 써도 되지만 이를 축약하는 부분이 프로퍼티입니다.
        public string Name;
        public string Manufacture;
        public int Cost;
        
        public good(string name, string manufacture, int cost)
        {
            Name = name;
            Manufacture = manufacture;
            Cost = cost;
        }


    }
}