using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();

        string islem;
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack ==false)
            {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"];

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.connect());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

            //Yemek Listesi
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.connect());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("delete from Tbl_Yemekler where YemekId=@p1", bgl.connect());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                bgl.connect().Close();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriId)values (@p1,@p2,@p3,@p4)",bgl.connect());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.connect().Close();

            //Kategori Sayısını Arttırma
            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriId=@p1", bgl.connect());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.connect().Close();
        }
    }
}