using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {

        SqlClass bgl = new SqlClass();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand cnn = new SqlCommand("select * from Tbl_Kategoriler", bgl.connect());
            SqlDataReader dr = cnn.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Silme İşlemi
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete from Tbl_Kategoriler where KategoriId=@p1", bgl.connect());
                komutsil.Parameters.AddWithValue("@p1",id);
                komutsil.ExecuteNonQuery();
                bgl.connect().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
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
            SqlCommand insert = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1) ", bgl.connect());
            insert.Parameters.AddWithValue("@p1",TextBox1.Text);
            insert.ExecuteNonQuery();
            bgl.connect().Close();
        }
    }
}