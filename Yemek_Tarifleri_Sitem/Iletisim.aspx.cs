using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Iletisim : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand baglan = new SqlCommand("insert into Tbl_Mesajlar (MesajGonderen,MesajBaslik,MesajMail,MesajIcerik) values (@p1,@p2,@p3,@p4)", bgl.connect());
            baglan.Parameters.AddWithValue("@p1", TextBox1.Text);
            baglan.Parameters.AddWithValue("@p2", TextBox2.Text);
            baglan.Parameters.AddWithValue("@p3", TextBox3.Text);
            baglan.Parameters.AddWithValue("@p4", TextBox4.Text);

            baglan.ExecuteNonQuery();
            bgl.connect().Close();
        }
    }
}