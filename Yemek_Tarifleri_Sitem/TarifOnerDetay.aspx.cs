using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifId"];

            if (Page.IsPostBack == false)
            {

            
            SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler2 where TarifId=@p1", bgl.connect());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[4].ToString();
                TextBox5.Text = dr[5].ToString();
            }
            bgl.connect().Close();
                
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.connect());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            } 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //durum güncelleme
            SqlCommand komut = new SqlCommand("update Tbl_Tarifler2 set TarifDurum=1 where TarifId=@p1", bgl.connect());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.connect().Close();

            //Yemeği anasayfaya ekleme
            SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler(Yemekad,YemekMalzeme,YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)", bgl.connect());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut2.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.connect().Close();
        }
    }
}