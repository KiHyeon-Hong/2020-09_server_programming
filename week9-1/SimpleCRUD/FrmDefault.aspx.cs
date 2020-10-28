using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week7.SimpleCRUD
{
    public partial class FrmDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();

            string insertSql = "insert into Product(name, color, size) values(@name, @color, @size)";

            SqlCommand cmd = new SqlCommand(insertSql, conn);

            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@color", color.Text);
            cmd.Parameters.AddWithValue("@size", size.Text);

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            //조회를 먼저 만들고 있으면 데이터베이스에서 해당 값을 가져오고 보여줘야한다
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();

            string updateSql = "update Product set color=@color, size=@size where name=@name";

            SqlCommand cmd = new SqlCommand(updateSql, conn);

            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@color", color.Text);
            cmd.Parameters.AddWithValue("@size", size.Text);

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();

            string deleteSql = "delete from Product where name=@name";

            SqlCommand cmd = new SqlCommand(deleteSql, conn);

            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@color", color.Text);
            cmd.Parameters.AddWithValue("@size", size.Text);

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();

            string selectSql = "select * from Product";
            //CRUD 조작
            SqlCommand cmd = new SqlCommand(selectSql, conn);

            //Data adapter는 데이터베이스에 관련된 메모리 영역만큼 메모리 영역을 만든다
            //그 안에다가 data adapter 사용해서 데이터를 넣어준다.
            //DataAdapter와 DataReader의 차이 알아보기

            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            //데이터 어댑터 조작해서 가상의 공간에 넣어준다
            da.Fill(ds, "TearMoon");

            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();

            conn.Close();
        }
    }
}

/*
    DataSet 이용 절차?
    5가지의 절차 - 디비연결, 조회, command 실행, insert 실행, .......
    DataSEt열고 삽입하고, 삽입시킨거를 update 시키고(가상의 메모리) 후 종료
    

 */