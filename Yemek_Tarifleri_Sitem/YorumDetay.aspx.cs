using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumId"];

            if (Page.IsPostBack == false)
            {



                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,YemekIcerik,YemekAd from " +
                    "Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.YemekId=Tbl_Yemekler.YemekId where YorumId=@p1", bgl.connect());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                    TextBox2.Text = dr[1].ToString();
                    TextBox3.Text = dr[2].ToString();
                    TextBox4.Text = dr[3].ToString();
                }
                bgl.connect().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar set YemekIcerik=@p1,YorumOnay=@p2 where YorumId=@p3",bgl.connect());
            komut.Parameters.AddWithValue("@p1", TextBox3.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.connect().Close();
        }
    }
}