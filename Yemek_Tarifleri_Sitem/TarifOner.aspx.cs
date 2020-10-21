using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand baglanti = new SqlCommand("insert into dbo.Tbl_Tarifler2(TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)", baglan.connect());
            baglanti.Parameters.AddWithValue("@t1", TxtTarif.Text);
            baglanti.Parameters.AddWithValue("@t2", TxtMalzeme.Text);
            baglanti.Parameters.AddWithValue("@t3", TxtYapilis.Text);
            baglanti.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            baglanti.Parameters.AddWithValue("@t5", TxtTarifOner.Text);
            baglanti.Parameters.AddWithValue("@t6", TxtMail.Text);
            baglanti.ExecuteNonQuery();
            baglan.connect().Close();

            Response.Write("Tarifiniz Alınmıştır");

        }
    }
}