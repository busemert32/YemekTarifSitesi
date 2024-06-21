using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kullanici : System.Web.UI.MasterPage
{
    Baglanti bgl = new Baglanti();//sql bağlantısı için sınıfı cagırıyoruz baglanti sınıfından nesne üretiyoruz
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Kategoriler", bgl.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
}
