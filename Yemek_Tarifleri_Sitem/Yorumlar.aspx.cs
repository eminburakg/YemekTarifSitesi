using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();

        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
            Panel3.Visible = false;

           //Onaylı Yorum Listesi
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yorumlar where yorumonay=1", bgl.connect());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

            //Onaysız Yorum Listesi
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where yorumonay=0", bgl.connect());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList3.DataSource = dr2;
            DataList3.DataBind();

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }
    }
}