using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriAdminDeaty : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Kategoriid"];//diğer formdan taşınan değer.
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("Select * from Kategoriler where kategoriid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txt_KategoriAd.Text = dr[1].ToString();
                txt_KategoriAdet.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();
        }
    }


    protected void btn_KategoriGüncelle_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Update Kategoriler set KategoriAd=@p1, KategoriAdet=@p2 where Kategoriid=@p3", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", txt_KategoriAd.Text);
        cmd.Parameters.AddWithValue("@p2", txt_KategoriAdet.Text);
        cmd.Parameters.AddWithValue("@p3", id);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}
