using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week4
{
    public partial class FrmConta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rblDirec_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChkList.RepeatDirection = (RepeatDirection)rblDirec.SelectedIndex;
        }

        protected void rblLay_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChkList.RepeatLayout = (RepeatLayout)rblLay.SelectedIndex;
        }

        protected void ChkList_SelectedIndexChanged(object sender, EventArgs e)
        {
            BulletedList1.Items.Clear();
            foreach(ListItem item in ChkList.Items)
            {
                if (item.Selected)
                    BulletedList1.Items.Add(item);
            }
        }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            BulletedList1.BulletStyle = (BulletStyle)ddl.SelectedIndex;
        }
    }
}