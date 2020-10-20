using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TermStudy
{
    public partial class FrmCircle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                unit.Items.Add(new ListItem("센티미터(cm)", "cm"));
                unit.Items.Add(new ListItem("미터(m)", "m"));
                unit.Items.Add(new ListItem("킬로미터(km)", "km"));
            }
        }

        protected void calc_Click(object sender, EventArgs e)
        {
            int rad = int.Parse(radius.Text);
            //int rad = Convert.ToInt32(radius.Text);

            //float myResult = (float)(rad * rad * Math.PI);
            //float myResult = float.Parse((rad * rad * Math.PI).ToString());
            float myResult = Convert.ToSingle(rad * rad * Math.PI);

            string myUnit = unit.SelectedValue; //cm

            //Response.Write(unit.SelectedIndex);   0
            //Response.Write(unit.SelectedItem);    센티미터(cm)

            result.Text = "반지름이 " + rad + myUnit + " 인 원의 넓이는 ";
            result.Text += myResult + myUnit + "<sup>2</sup> 입니다.";
        }
    }
}