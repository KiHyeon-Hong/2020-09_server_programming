using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week10.Files
{
    public partial class FrmFileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string fileName = Server.MapPath("/") + @"/" + FileUpload1.FileName;
            FileUpload1.SaveAs(fileName);

            lblFiles.Text = "파일명 : " + FileUpload1.FileName + "<br />";
            lblFiles.Text += "컨텐츠 타입 : " + FileUpload1.PostedFile.ContentType + "<br />";
            lblFiles.Text += "파일 크기 : " + FileUpload1.PostedFile.ContentLength + "<br />";
            
        }
    }
}