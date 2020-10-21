using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cnn = new SqlCommand("select * from Tbl_Yemekler",bgl.connect());
            SqlDataReader oku = cnn.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();

        }
    }
}