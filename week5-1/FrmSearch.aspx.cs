using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week5
{
    public partial class FrmSearch : System.Web.UI.Page
    {
        public string keyword{
            get{return txtIn.Text;} //keyword = txtIn.Text;
        }

        public string fileType
        {
            get
            {
                string returnVal = "";
                switch (ddls.SelectedIndex)
                {
                    case 0:
                        returnVal = "filetype:doc";
                        break;
                    case 1:
                        returnVal = "filetype:ppt";
                        break;
                    case 2:
                        returnVal = "filetype:hwp";
                        break;
                    case 3:
                        returnVal = "filetype:pdf";
                        break;
                }
                return returnVal;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            string queryString = "keyword=" + Server.UrlEncode(txtIn.Text);
            queryString += "&";
            queryString += "FileType=" + fileType;

            Response.Redirect("FrmMRst.aspx?" + queryString);   //결과 페이지에 전송
        }
    }
}