using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    string islem = "";
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];
            //kategorileri dropdownliste çekiyoruzki yemek eklerken seçebilelim    
            SqlCommand cmd2 = new SqlCommand("Select * from Kategoriler", bgl.baglanti());
            SqlDataReader dr = cmd2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr;
            DropDownList1.DataBind();
        }

        //yemek listesi label
        SqlCommand cmd = new SqlCommand("Select *from Yemekler", bgl.baglanti());
        SqlDataReader dataReader = cmd.ExecuteReader();
        DataList1.DataSource = dataReader;
        DataList1.DataBind();
        bgl.baglanti().Close();

        //silme işlemi
        if (islem == "sil")
        {
            SqlCommand cmd2 = new SqlCommand("Delete from Yemekler where Yemekid=@p1", bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p1", id);
            cmd2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void btn_YemekEkle_Click(object sender, EventArgs e)
    {
        //yemek ekle
        SqlCommand cmd = new SqlCommand("Insert into Yemekler (YemekAd,YemekMalzeme,YemekTarif,kategoriid) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", txt_YemekAd.Text);
        cmd.Parameters.AddWithValue("@p2", txt_Malzeme.Text);
        cmd.Parameters.AddWithValue("@p3", txt_Tarif.Text);
        cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();


        //kategori sayısı arttırma
        SqlCommand cmd2 = new SqlCommand("Update Kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
        cmd2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        cmd2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

 
}