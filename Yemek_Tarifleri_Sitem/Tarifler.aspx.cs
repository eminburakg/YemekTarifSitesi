using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Tarifler : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            

            SqlCommand komut = new SqlCommand("select * from Tbl_Tarifler2 where Tarifdurum=0",bgl.connect());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

            SqlCommand komut1 = new SqlCommand("select * from Tbl_Tarifler2 where Tarifdurum=1", bgl.connect());
            SqlDataReader dr1 = komut1.ExecuteReader();
            DataList3.DataSource = dr1;
            DataList3.DataBind();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}