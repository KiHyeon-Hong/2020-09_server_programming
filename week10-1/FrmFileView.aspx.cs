using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week10.Files
{
    public partial class FrmFileView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //파일, 디렉터리에 대한 정보를 읽어오자
                //단추로 만들어져야 되는데 단추가 아니므로 함수로 만들어야 한다?
                string dirs = @"C:/";
                lblDisp.Text = dirs;
                showDirectory(dirs);
                showFiles(dirs);
            }
        }

        private void showFiles(string dirs)
        {
            Literal1.Text = "";
            DirectoryInfo di = new DirectoryInfo(dirs);

            ListBox2.DataSource = di.GetFiles()
;
            ListBox2.DataMember = "Name";
            ListBox2.DataBind();

        }

        private void showDirectory(string dirs)
        {
            ListBox1.Items.Clear();

            DirectoryInfo di = new DirectoryInfo(dirs);

            if (di.Root.Name != di.Name)
                ListBox1.Items.Add(new ListItem("..", ".."));
            
            foreach(DirectoryInfo item in di.GetDirectories())
            {
                ListBox1.Items.Add(item.Name);
            }
        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            StreamReader sr;

            sr = File.OpenText("C:/Users/ghdrl/source/repos/week10/week10/Files/Test.txt");
            lblRead.Text = "";
            do
            {
                lblRead.Text += sr.ReadLine();
            } while (!sr.EndOfStream);
            //lblRead.Text = sr.ReadToEnd();
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selDir = "";

            if(ListBox1.SelectedItem.Text == "..")
            {
                selDir = Directory.GetParent(lblDisp.Text).FullName;
            }
            else
            {
                selDir = Path.Combine(lblDisp.Text, ListBox1.SelectedItem.Text);
            }
            lblDisp.Text = selDir;
            showDirectory(selDir);
            showFiles(selDir);
        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Write(ListBox2.SelectedItem);
            string fileName = Path.Combine(lblDisp.Text, ListBox2.SelectedItem.Text);
            FileInfo fi = new FileInfo(fileName);
            Literal1.Text = "파일이름 : " + fi.Name + "<br />파일 크기 : " + fi.Length + "<br />파일생성 시간 : " + fi.CreationTime + "<br />최근 실행 시간 : " + fi.LastAccessTime + "<br />";

        }
    }
}