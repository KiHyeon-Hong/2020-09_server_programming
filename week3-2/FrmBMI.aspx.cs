using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week3_2
{
    public partial class FrmBMI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            if(IsPostBack == false) //(!isPostBack)
            {
                ddl.Items.Add(new ListItem("cm", "0.01"));
                ddl.Items.Add(new ListItem("피트", "0.3048"));
                ddl.Items.Add(new ListItem("미터", "1"));
                ddl.Items.Add(new ListItem("킬로미터", "1000"));
                //처음 페이지 고정된 값만 보여준다
            }
            */
            //그냥 이렇게 하면 누적되어 만들어진다,
            //다른 방식으로 만들 수도 있음
        }
        protected void btn_click(object sender, EventArgs e)
        {
            ListItem item = ddl.Items[ddl.SelectedIndex];
            Response.Write(item.ToString());
            //선택된 항목의 value의 값을 빼와야 한다
            Response.Write(item.Value);

            float wei = float.Parse(txtweight.Text);
            float hei = float.Parse(txtkeys.Text) * float.Parse(item.Value);
            float rst = wei / (hei * hei);

            Result.Text = "체질량 지수(BMI) : " + rst.ToString();

            //화면에 출력할 수 있음
            //Response.Write(hei);

            //산출하기를 누르면, POST 방식으로 넘어온다
            //Form의 메소드에서 get을 사용할지, post를 사용할지 결정 가능하다
        }
    }
}