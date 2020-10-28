using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace week7.No_var
{
    public partial class FrmNInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);

            conn.Open();

            string insertSql = "insert into Test(name, tel_phone) values(N'홍기현', '010-6605-5379')";
            SqlCommand cmd = new SqlCommand(insertSql, conn);

            //cmd.ExecuteNonQuery();

            if (cmd.ExecuteNonQuery() == 1)
                Response.Write("정상적으로 처리됨");

            conn.Close();
        }
    }
}