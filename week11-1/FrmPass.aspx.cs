using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BoardTemp
{
    public partial class FrmPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //코드 작성
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            //수정의 글을 전체적으로 가져와서 pass에 대한 비교?
            conn.Open();

            string selectSql = "select * from tblBrd where num = " + Request["No"];
            SqlCommand cmd = new SqlCommand(selectSql,conn);
            SqlDataReader dr = cmd.ExecuteReader();

            dr.Read();
            string strPass = dr["pass"].ToString();
            conn.Close();

            if(strPass.CompareTo(txtpass.Text) == 0 && Request["Action"].CompareTo("Modify") == 0)
            {
                Response.Redirect("FrmModify.aspx?No=" + Request["No"]);
            }

            if (strPass.CompareTo(txtpass.Text) == 0 && Request["Action"].CompareTo("Delete") == 0)
            {
                conn.Open();

                string deleteSql = "delete from tblBrd where num=" + Request["No"];
                SqlCommand deleteCmd = new SqlCommand(deleteSql, conn);
                deleteCmd.ExecuteNonQuery();

                conn.Close();

                Response.Redirect("~/FrmList.aspx");
            }
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FrmList.aspx");
        }
    }
}