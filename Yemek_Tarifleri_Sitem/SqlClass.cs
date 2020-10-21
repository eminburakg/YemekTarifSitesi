using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Yemek_Tarifleri_Sitem
{
    public class SqlClass
    {
        SqlConnection cnn = new SqlConnection(@"Data source=DESKTOP-87VKS3P\SQLEXPRESS;Initial Catalog=Dbo.YemekTarifi;Integrated Security=True");

        public SqlConnection connect()
        {
            if(cnn.State == System.Data.ConnectionState.Closed)
            { 
               cnn.Open();
            }

            return cnn;
        }

        private void disconnect()
        {
            cnn.Close();
        }


        public SqlDataReader executeReader(string commandText)
        {
            connect();
            //calistir
            SqlCommand cmd = new SqlCommand(commandText, cnn);
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return dr;
        }

        public void executeCommand(string commandText)
        {
            connect();
            SqlCommand cmd = new SqlCommand(commandText,cnn);
            cmd.ExecuteNonQuery();
            disconnect();
        }

    }
}