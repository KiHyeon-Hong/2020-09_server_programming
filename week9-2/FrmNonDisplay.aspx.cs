using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week7.NonConn
{
    public partial class FrmNonDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();

            string selectSql = "select * from Test";
            SqlCommand cmd = new SqlCommand(selectSql, conn);

            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            //Fill로 채운다
            da.Fill(ds, "myTest");

            //Label에 데이터 표시
            string strOut = "<table border=\"1\">" + "<tr><td>이름</td><td>전화번호</td></tr>";

            foreach(DataRow item in ds.Tables["myTest"].Rows)
            {
                strOut += $"<tr><td>{item["name"].ToString()}</td><td>{item["tel_phone"].ToString()}</td></tr>";
            }

            strOut += "</table>";

            lblDisp.Text = strOut;


            //Grid에 데이터 표시(GridView1)
            GridView1.DataSource = ds.Tables[0];    //DataSource 연결하고
            GridView1.DataBind();                   //Bind 시켜준다


            //DropDownList에 추가해서 표시
            //Arr.Length, count..... 사용하는거와 같다
            for(int i = 0; i < ds.Tables["myTest"].Rows.Count; i++)
            {
                DataRow row = ds.Tables["myTest"].Rows[i];
                ListItem item = new ListItem();

                item.Text = row["name"].ToString();
                item.Value = row["tel_phone"].ToString();

                DropDownList1.Items.Add(item);
            }

            conn.Close();
        }
    }
}