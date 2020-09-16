using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Banking
{
    public class Customer
    {
        private string m_name;
        public void setM_name(string m_name)
        {
            this.m_name = m_name;
        }
        public string getM_name()
        {
            return m_name;
        }
    }
}