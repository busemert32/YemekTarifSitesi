using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.SqlServer.Server;

public partial class TarifÖnerDetay : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    string Tarifid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Tarifid = Request.QueryString["Tarifid"];//diğer formdan taşınan değer.
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("Select * from Tarifler where Tarifid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", Tarifid);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txt_TarifAd.Text = dr[1].ToString();
                txt_TarifMalzeme.Text = dr[2].ToString();
                txt_TarifHazırlanış.Text = dr[3].ToString();
                txt_TarifÖneren.Text = dr[5].ToString();
                txt_ÖnerenMail.Text = dr[6].ToString();
            }
            bgl.baglanti().Close();
            //kategori listesi
            SqlCommand cmd2 = new SqlCommand("Select * from Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = cmd2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
    }

    protected void btn_yorumgönder_Click(object sender, EventArgs e)
    {
        // durum güncelleme
        SqlCommand cmd = new SqlCommand("Update Tarifler set TarifDurum=1 where Tarifid=@p1", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", Tarifid);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();

        //Yemeği anasayfaya ekleme
        SqlCommand cmd2 = new SqlCommand("INSERT INTO Yemekler (YemekAd, YemekMalzeme, YemekTarif, Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        cmd2.Parameters.AddWithValue("@p1", txt_TarifAd.Text);
        cmd2.Parameters.AddWithValue("@p2", txt_TarifMalzeme.Text);
        cmd2.Parameters.AddWithValue("@p3", txt_TarifHazırlanış.Text);
        cmd2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd2.ExecuteNonQuery();
        bgl.baglanti().Close();


        //Kategori Sayısını Arttırma
        SqlCommand komut3 = new SqlCommand("UPDATE Kategoriler SET KategoriAdet = KategoriAdet + 1 WHERE Kategoriid=@Kategoriid", bgl.baglanti());
        komut3.Parameters.AddWithValue("@Kategoriid", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}