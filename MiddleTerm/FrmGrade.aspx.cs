using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermStudy
{
    public partial class FrmGrade : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            if (Session["count"] == null)
                Session["count"] = 0;

            stdInfo.Text = "학생들의 정보가 표시됩니다";
        }

        protected void store_Click(object sender, EventArgs e)
        {
            MyStudent std = new MyStudent();
            std.Name = name.Text;
            std.Grade = grade.Text;

            int count = int.Parse(Session["count"].ToString());

            studentList.Items.Add(new ListItem(std.Name, count.ToString()));

            Session["std" + count] = std;
            Session["count"] = count + 1;


        }

        protected void studentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            MyStudent myStd = (MyStudent)Session["std" + (studentList.SelectedIndex).ToString()];

            stdInfo.Text = myStd.printInfo();
        }
    }
}