using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"];

            if (Page.IsPostBack ==false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where YemekId=@p1",bgl.connect());
                komut.Parameters.AddWithValue("@p1",id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.connect().Close();
                
            }

            if (Page.IsPostBack == false)
            {
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
            FileUpload1.SaveAs(Server.MapPath("/resimler/"+ FileUpload1.FileName));


            SqlCommand komut = new SqlCommand("update tbl_Yemekler set Yemekad=@p1,YemekMalzeme=@p2,Yemektarif=@p3,Kategoriid=@p4,YemekResim=@p6 " +
                " where yemekid=@p5 ",bgl.connect());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", id);
            
            komut.ExecuteNonQuery();
            bgl.connect().Close();
   }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set Durum=0", bgl.connect());
            komut.ExecuteNonQuery();
            bgl.connect().Close();

            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set Durum=1 where yemekid=@p1", bgl.connect());
            komut2.Parameters.AddWithValue("@p1",id);
            komut2.ExecuteNonQuery();
            bgl.connect().Close();
        }
    }
}