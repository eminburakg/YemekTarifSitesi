using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;

            if (Page.IsPostBack == false)
            {

            

            SqlCommand komut = new SqlCommand("Select * from Tbl_Hakkimizda", bgl.connect());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
            }
            bgl.connect().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Hakkimizda set Metin=@p1", bgl.connect());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.connect().Close();
        }
    }
}