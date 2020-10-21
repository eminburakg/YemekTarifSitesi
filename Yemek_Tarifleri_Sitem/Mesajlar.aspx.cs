using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            SqlCommand komut = new SqlCommand("select * from Tbl_Mesajlar",bgl.connect());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}