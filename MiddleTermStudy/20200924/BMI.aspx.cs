using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiddleTermStudy
{
    public partial class BMI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                measure.Items.Add(new ListItem("cm", "0.01"));
                measure.Items.Add(new ListItem("m", "1"));
            }
        }
        protected void Calc_ServerClick(object sender, EventArgs e)
        {
            ListItem item = measure.Items[measure.SelectedIndex];
            decimal he = Decimal.Parse(height.Value) * Decimal.Parse(item.Value);
            decimal we = Decimal.Parse(weight.Value);

            decimal BMI = we / (he * he);
            Result.InnerText = BMI.ToString();
        }
    }
}