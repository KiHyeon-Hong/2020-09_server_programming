using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week7
{
    public partial class FrmNUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();

            string selectSql = "select * from Test";

            SqlCommand cmd = new SqlCommand(selectSql, conn);
            //읽어서 가져오고,
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataSet ds = new DataSet();
            //원본 테이블의 이름
            da.Fill(ds, "Test");
            //GridView에다 연결
            GridView1.DataSource = ds.Tables[0].DefaultView;    //첫번째 테이블부터 가져오겠습니다

            GridView1.DataBind();

            //밖에서 만들지 않고 안에서 만들기
            //다른 부분과 연결되어 있는 형태라면...

            conn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);

            conn.Open();
            //한글이면 N자를 넣어줘야 한다.
            string updateSql = "update Test set name = 'Texas', tel_phone = '010-6605-5379' where name = '???'";

            SqlCommand cmd = new SqlCommand(updateSql, conn);

            cmd.ExecuteNonQuery();

            conn.Close();
        }
    }
}
