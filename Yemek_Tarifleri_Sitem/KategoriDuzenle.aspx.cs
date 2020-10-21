using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {


            id = Request.QueryString["KategoriId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand cnn = new SqlCommand("select * from Tbl_Kategoriler where KategoriId=@p1", bgl.connect());
                cnn.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cnn.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
                bgl.connect().Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where kategoriId=@p3",bgl.connect());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.connect().Close();
        }
    }
}