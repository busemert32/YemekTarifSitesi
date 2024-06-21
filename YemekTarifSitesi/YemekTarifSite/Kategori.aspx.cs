using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategori : System.Web.UI.Page
{
    Baglanti bgl=new Baglanti();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if ( Page.IsPostBack == false)
        {
            id = Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];
        }
        SqlCommand cmd = new SqlCommand("Select * from Kategoriler",bgl.baglanti());
        SqlDataReader reader = cmd.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();


        //silme işlemi
        if (islem == "sil")
        {
            SqlCommand cmd2 = new SqlCommand("Delete from Kategoriler where kategoriid=@p1", bgl.baglanti());
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
        Panel2.Visible=false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void btn_kategoriEkle_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into Kategoriler (KategoriAd) values (@p1)",bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", txt_KategoriAd.Text);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}