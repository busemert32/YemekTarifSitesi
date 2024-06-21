using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    string Yemekid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd2 = new SqlCommand("Select * from Kategoriler", bgl.baglanti());
            SqlDataReader dr = cmd2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr;
            DropDownList1.DataBind();
        }
        Yemekid = Request.QueryString["Yemekid"];//diğer formdan taşınan değer.
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("Select * from Yemekler where Yemekid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", Yemekid);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txt_YemekAd.Text = dr[1].ToString();
                txt_YemekMalzeme.Text = dr[2].ToString();
                txt_Tarif.Text = dr[3].ToString();
                DropDownList1.Text = dr[7].ToString();
            }
            bgl.baglanti().Close();

        }
    }

    protected void btn_YemekGüncelle_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

        SqlCommand cmd = new SqlCommand("Update Yemekler set YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, Kategoriid=@p4, YemekResim=@p5 where Yemekid=@p6", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", txt_YemekAd.Text);
        cmd.Parameters.AddWithValue("@p2", txt_YemekMalzeme.Text);
        cmd.Parameters.AddWithValue("@p3",txt_Tarif.Text);
        cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@p5","~/resimler/"+FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@p6", Yemekid);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
    }




    protected void btn_gununyemegisec_Click(object sender, EventArgs e)
    { 
        //tüm yemelerin durumunu false yapar
        SqlCommand cmd = new SqlCommand("Update Yemekler set Durum=0", bgl.baglanti());
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();

        //günün yemeği için id ye göre durumu true yapar
        SqlCommand cmd2 = new SqlCommand("Update Yemekler set Durum=1 where Yemekid=@p1", bgl.baglanti());
        cmd2.Parameters.AddWithValue("@p1", Yemekid);
        cmd2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}