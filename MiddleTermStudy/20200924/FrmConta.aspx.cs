using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class FrmConta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rblDirec_SelectedIndexChanged(object sender, EventArgs e)
        {
            chkList.RepeatDirection = (RepeatDirection)rblDirec.SelectedIndex;
        }

        protected void RrblLay_SelectedIndexChanged(object sender, EventArgs e)
        {
            chkList.RepeatLayout = (RepeatLayout)rblLay.SelectedIndex;
        }

        protected void chkList_SelectedIndexChanged(object sender, EventArgs e)
        {
            BulletedList1.Items.Clear();

            foreach (ListItem item in chkList.Items)
                if (item.Selected)
                    BulletedList1.Items.Add(item);
        }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            BulletedList1.BulletStyle = (BulletStyle)ddl.SelectedIndex;
        }
    }
}