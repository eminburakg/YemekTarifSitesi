using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlClass snf = new SqlClass();
        string kategoriid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["KategoriId"];
            SqlCommand komut = new SqlCommand("select * from  Tbl_Yemekler where KategoriId=@p1", snf.connect());
            komut.Parameters.AddWithValue("@p1",kategoriid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}