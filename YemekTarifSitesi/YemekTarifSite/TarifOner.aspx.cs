using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_TarifÖner_Click(object sender, EventArgs e)
    {
        SqlCommand cmd= new SqlCommand("Insert into Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
        cmd.Parameters.AddWithValue("@t1", txt_tarifAd.Text);
        cmd.Parameters.AddWithValue("@t2", txt_tarifMalzeme.Text);
        cmd.Parameters.AddWithValue("@t3", txt_tarifHazirlanis.Text);
        cmd.Parameters.AddWithValue("@t4", FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@t5", txt_tarifSahip.Text);
        cmd.Parameters.AddWithValue("@t6", txt_sahipMail.Text);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Tarifiniz Alınmıştır");
    }
}
