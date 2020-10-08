using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week6
{
    public partial class FrmSearch : System.Web.UI.Page
    {
        //public string gTxtKey
        //{
        //    get
        //    {
        //        return txtIn.Text;
        //    }
        //}
        //public string gFileType
        //{
        //    get
        //    {
        //        string returnValue = "";
        //        switch (ddl.SelectedIndex)
        //        {
        //            case 0:
        //                returnValue = "filetype:doc";
        //                break;
        //            case 1:
        //                returnValue = "filetype:ppt";
        //                break;
        //            case 2:
        //                returnValue = "filetype:hwp";
        //                break;
        //            case 3:
        //                returnValue = "filetype:pdf";
        //                break;
        //        }
        //        return returnValue;
        //    }
        //}

        public string gTxtKey;
        public string gFileType;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            gTxtKey = txtIn.Text;
            gFileType = ddl.SelectedItem.Text;

            string queryString = "keyword=" + Server.UrlEncode(gTxtKey);
            queryString += "&";

            queryString += "FileType=" + gFileType;
            //Response.Write("~/FrmRst.aspx?" + queryString);
        }
    }
}