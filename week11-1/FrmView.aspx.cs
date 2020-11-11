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
    public partial class FrmView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
                conn.Open();



                //조회수 코드 작성
                string cntSql = "select * from tblBrd where num=" + Request["No"];
                SqlCommand cntCmd = new SqlCommand(cntSql, conn);
                cntCmd.ExecuteNonQuery();
                SqlDataReader cntDr = cntCmd.ExecuteReader();

                if (cntDr.Read())
                {
                    int myCnt = int.Parse(cntDr["readcnt"].ToString()) + 1;

                    conn.Close();
                    conn.Open();

                    string updateSql = "update tblBrd set readcnt=@readcnt where num=" + Request["No"];
                    SqlCommand updateCmd = new SqlCommand(updateSql, conn);
                    updateCmd.Parameters.AddWithValue("@readcnt", myCnt);
                    updateCmd.ExecuteNonQuery();
                }

                cntDr.Close();
                conn.Close();
                conn.Open();



                //레코드 출력
                string selectSql = "select * from tblBrd where num=" + Request["No"];
                SqlCommand cmd = new SqlCommand(selectSql, conn);
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    lblName.Text = dr["name"].ToString();
                    lblWriteDate.Text = dr["writedate"].ToString();
                    lblReadCount.Text = dr["readcnt"].ToString();   //출력이 잘되게 코드 작성해 주세요
                    lblTitle.Text = dr["title"].ToString();
                    txtContents.Text = dr["contents"].ToString();
                }

                dr.Close();
                conn.Close();
            }
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmList.aspx");
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmPass.aspx?Action=Modify&No=" + Request["No"]);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmPass.aspx?Action=Delete&No=" + Request["No"]);
        }
    }
}