using System;
using System.Collections.Generic;
using System.Data.SqlClient;    //sql 사용
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week7
{
    public partial class FrmDBConnect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            //연결 문자열
            //매번 걸어주야 하니까 Web.config에 넣자
            //DB에 연결하는 방법 두 가지

            //conn.ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB;initial Catalog=wed_asp_DB; Integrated Security=True;";
            //conn.ConnectionString = @"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=wed_asp_DB;Integrated Security=True;";

            try
            {
                //Web.config 내영을 바꾸면 연결이 제대로 되지 않고, 오류가 발생합니다
                conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);

                conn.Open();

                lblDisp.Text = "연결상태 : " + conn.State.ToString() + "<br />";
                lblDisp.Text += "서버버전 : " + conn.ServerVersion + "<br />";

            }
            catch(Exception err)
            {
                lblDisp.Text = "오류 발생 <br />";
                lblDisp.Text += err.Message;
            }
            finally
            {
                conn.Close();
                lblDisp.Text += "마지막 연결 상태 : " + conn.State.ToString();
            }

        }
    }
}