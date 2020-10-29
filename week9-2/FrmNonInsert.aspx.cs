using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week7.NonConn
{
    public partial class FrmNonInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {   
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();

            string selectSql = "select * from Product";
            SqlCommand selectCmd = new SqlCommand(selectSql, conn);

            //SqlDataAdapter da = new SqlDataAdapter(selectCmd);
            SqlDataAdapter da = new SqlDataAdapter();   //SqlDataAdapter(selectCmd)
            selectCmd.Parameters.AddWithValue("@name", name.Text);
            selectCmd.Parameters.AddWithValue("@color", color.Text);
            selectCmd.Parameters.AddWithValue("@size", size.Text);

            da.SelectCommand = selectCmd;

            //2. insert, update, delete문을 실행 작성
            string insertSql = "insert into Product values(@name, @color, @size)";
            SqlCommand insertCmd = new SqlCommand(insertSql, conn);

            insertCmd.Parameters.AddWithValue("@name", name.Text);
            insertCmd.Parameters.AddWithValue("@color", color.Text);
            insertCmd.Parameters.AddWithValue("@size", size.Text);

            da.InsertCommand = insertCmd;

            //3. DataSet을 생성 및 연결 삽입 단계
            DataSet ds = new DataSet();
            da.Fill(ds, "myProduct");

            DataTable table = ds.Tables["myProduct"];   //[0]
            DataRow row = table.NewRow();

            row["name"] = name.Text;
            row["color"] = color.Text;
            row["size"] = size.Text;
            //값이 들어온다
            table.Rows.Add(row);

            //5. 반영된 내영을 실 데이터베이스에 반영
            da.Update(ds, "myProduct");


            conn.Close();

            Response.Write("정상적으로 삽입되었습니다.");
        }
    }
}