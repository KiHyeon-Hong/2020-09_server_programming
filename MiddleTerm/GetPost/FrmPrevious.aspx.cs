using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermStudy.GetPost
{
    public partial class FrmPrevious : System.Web.UI.Page
    {
        public string Keywork
        {
            get
            {
                return txtIn.Text;
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
    }
}