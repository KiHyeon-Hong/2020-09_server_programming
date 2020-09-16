//using Banking;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//Customer를 활용하고 싶다면 연결을 시켜줘야 합니다

namespace Medical
{
    public class MedicalCustomer
    {
        //아니면 using Banking을 사용합니다
        Banking.Customer m_Customer;
        public void RegisterCustomer(string name)
        {
            m_Customer = new Banking.Customer();
            m_Customer.setM_name(name);
        }

        public string GetName()
        {
            return m_Customer.getM_name();
        }
    }
}