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
    public partial class FrmModify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);

                conn.Open();

                string selectSql = "select * from tblBrd where num=" + Request["No"];
                SqlCommand cmd = new SqlCommand(selectSql, conn);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    lblName.Text = dr["name"].ToString();
                    txtTitle.Text = dr["title"].ToString();
                    txtContents.Text = dr["contents"].ToString();
                }

                dr.Close();
                conn.Close();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmList.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            
        }
    }
}