using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {//yorum düzenlemek için verileri çekiyoz
        id = Request.QueryString["Yorumid"];
        if (Page.IsPostBack == false)
        {
            //inner join ile Yorumlar tablosuyla yemekler tablosunu birleştirdik ki yemeğin adı gelsin hangi yemeğe yorum yapmış bilelim on ile şart sunuyoruz
            //şartımda yorumlar tablosundaki yemek id ile yemekler tablosundaki yemek id ile birbirine eşit olanı getir where de şarttır yorumid si paramtere 1e eşit olanı getir 
            SqlCommand cmd = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumİcerik,YemekAd from Yorumlar inner join Yemekler on Yorumlar.Yemekid=Yemekler.Yemekid where Yorumid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Txt_adSoyad.Text = dr[0].ToString();
                txt_mail.Text = dr[1].ToString();
                txt_icerik.Text = dr[2].ToString();
                txt_yemek.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
        }
    }

    protected void btn_gönder_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Update Yorumlar set Yorumİcerik=@p1,YorumOnay=@p2 where Yorumid=@p3",bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", txt_icerik.Text);
        cmd.Parameters.AddWithValue("@p2", "True");
        cmd.Parameters.AddWithValue("@p3", id);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close(); 
    }
}