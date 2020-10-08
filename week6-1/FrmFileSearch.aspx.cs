using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week6
{
    public partial class FrmFileSearch : System.Web.UI.Page
    {
        //사실 그냥 View 쪽에서 받아와도 된다
        public string keyWord
        {
            get
            {
                return txtIn.Text;  //항상 txtn으로 들어오는건? 바뀐다?
            }
        }
        public string fileType
        {
            get
            {
                string returnValue = "";
                switch (ddl.SelectedIndex)
                {
                    case 0:
                        returnValue = "filetype:doc";
                        break;
                    case 1:
                        returnValue = "filetype:ppt";
                        break;
                    case 2:
                        returnValue = "filetype:hwp";
                        break;
                    case 3:
                        returnValue = "filetype:pdf";
                        break;
                }
                return returnValue;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            //get을 이용해서 받아보자

            string queryString = "keyword=" + Server.UrlEncode(txtIn.Text);
            queryString += "&";
            queryString += "FileType=" + fileType;

            Response.Redirect("~/FrmFileRst.aspx?" + queryString);
        }
    }
}