using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermStudy
{
    public partial class FrmList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                repeatDirection.Items.Add(new ListItem("Horizantal", "0")); //item, value
                repeatDirection.Items.Add(new ListItem("Vertical", "1"));

                //selectedIndex으로 가져올 것이므로 ListItem을 만들지 않아도 된다, 그냥 넣으면 Item과 Value값이 통일됨
                repeatLayout.Items.Add("Table");
                repeatLayout.Items.Add("Flow");
            }
        }

        protected void repeatDirection_SelectedIndexChanged(object sender, EventArgs e)
        {
            //어떤 것으로 캐스케이딩하는지가 중요한 것 같음
            chkList.RepeatDirection = (RepeatDirection)repeatDirection.SelectedIndex;
            
            //Response.Write((RepeatDirection)repeatDirection.SelectedIndex);    Vertical
            //Response.Write(repeatDirection.SelectedIndex);    1

            //Response.Write(repeatDirection.SelectedValue);    1
            //Response.Write(repeatDirection.SelectedItem); Vertical
        }

        protected void repeatLayout_SelectedIndexChanged(object sender, EventArgs e)
        {
            chkList.RepeatLayout = (RepeatLayout)repeatLayout.SelectedIndex;

            //Response.Write(repeatLayout.SelectedValue);   Flow
            //Response.Write(repeatLayout.SelectedItem);    Flow
        }

        protected void chkList_SelectedIndexChanged(object sender, EventArgs e)
        {
            loveList.Items.Clear();

            foreach (ListItem item in chkList.Items)
                if (item.Selected)
                    loveList.Items.Add(item);
        }

        protected void styleList_SelectedIndexChanged(object sender, EventArgs e)
        {
            loveList.BulletStyle = (BulletStyle)styleList.SelectedIndex;
        }
    }
}