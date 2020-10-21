using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        string yemekid = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];

            SqlCommand komut = new SqlCommand("select YemekAd From Tbl_Yemekler where  YemekId=@param1", bgl.connect());
            komut.Parameters.AddWithValue("@param1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }

            bgl.connect().Close();

            //Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where YemekId=@param2", bgl.connect());
            komut2.Parameters.AddWithValue("@param2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into Tbl_Yorumlar(YorumAdSoyad,YorumMail,YemekIcerik,YemekId) values (@par1,@par2,@par3,@par4)",bgl.connect());
            komut3.Parameters.AddWithValue("@par1",TextBox1.Text);
            komut3.Parameters.AddWithValue("@par2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@par3", TextBox3.Text);
            komut3.Parameters.AddWithValue("@par4", yemekid);
            komut3.ExecuteNonQuery();
            bgl.connect().Close();


            
        }
    }
}