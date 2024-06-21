using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

public class Baglanti
{
    public SqlConnection baglanti()
    {
       SqlConnection baglan = new SqlConnection(@"Data Source=buse\SQLEXPRESS;Initial Catalog=YemekTarifSitesi;Integrated Security=True");
        baglan.Open();
        return baglan;
    }
}