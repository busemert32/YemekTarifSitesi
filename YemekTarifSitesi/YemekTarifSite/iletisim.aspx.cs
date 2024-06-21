using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class iletisim : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into Mesajlar (MesajGonderen,MesajMail,MesajBaslik,Mesajİcerik) values (@m1,@m2,@m3,@m4)",bgl.baglanti());
        cmd.Parameters.AddWithValue("@m1", txt_adsoyad.Text);
        cmd.Parameters.AddWithValue("@m2", txt_mail.Text);
        cmd.Parameters.AddWithValue("@m3", txt_baslik.Text);
        cmd.Parameters.AddWithValue("@m4", txt_mesaj.Text);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}