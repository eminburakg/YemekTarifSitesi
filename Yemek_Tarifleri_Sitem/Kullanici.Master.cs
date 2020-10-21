using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        SqlClass con = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmm = new SqlCommand("Select * from Tbl_Kategoriler",con.connect());
            SqlDataReader read = cmm.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
        }
    }
}