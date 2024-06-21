using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetayı : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"];
        SqlCommand cmd = new SqlCommand("Select YemekAd from Yemekler where yemekid=@p1", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", yemekid);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr[0].ToString();
        }
        bgl.baglanti().Close();


        SqlCommand cmd2 = new SqlCommand("Select * from Yorumlar where yemekid= @p2",bgl.baglanti());
        cmd2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void btn_yorumgönder_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into Yorumlar (YorumAdSoyad,YorumMail,Yorumİcerik,yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", txt_yorumadsoyad.Text);
        cmd.Parameters.AddWithValue("@p2", txt_yorummail.Text);
        cmd.Parameters.AddWithValue("@p3", txt_yorumicerik.Text);
        cmd.Parameters.AddWithValue("@p4", yemekid);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
        
    }
}