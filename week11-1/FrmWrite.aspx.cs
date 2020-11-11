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
    public partial class FrmWrite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnWrite_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();

            string insertSql = "insert into tblBrd(name, pass, email, title, contents, writedate, readcnt) values(@name,  @pass, @email, @title, @contents, @writedate, @readcnt)";

            SqlCommand cmd = new SqlCommand(insertSql, conn);
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@pass", pass.Text);
            cmd.Parameters.AddWithValue("@email",email.Text);
            cmd.Parameters.AddWithValue("@title", title.Text);
            cmd.Parameters.AddWithValue("@contents", contents.Text);
            cmd.Parameters.AddWithValue("@writedate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@readcnt", "0");

            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("FrmList.aspx");
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmList.aspx");
        }
    }
}