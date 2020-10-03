using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy2
{
    public partial class FrmBMI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                ddl.Items.Add(new ListItem("cm", "0.01"));
                ddl.Items.Add(new ListItem("피트", "0.3048"));
                ddl.Items.Add(new ListItem("m", "1"));
                ddl.Items.Add(new ListItem("km", "1000"));
            }
        }

        protected void myResult_Click(object sender, EventArgs e)
        {
            ListItem item = ddl.Items[ddl.SelectedIndex];

            Response.Write("item.ToString : " + item.ToString());
            Response.Write("item.Value : " + item.Value);

            float wei = float.Parse(weight.Text);
            float hei = float.Parse(height.Text) * float.Parse(item.Value);
            float rst = wei / (hei * hei);

            result.Text = rst.ToString();
        }
    }
}