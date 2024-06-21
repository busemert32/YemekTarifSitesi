using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Hakkımızda : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)// butona her bastgmda sayfayı yeniliyo bunu önlüyoz
        {
            SqlCommand cmd = new SqlCommand("Select * from Hakkımızda", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txt_hakkimizda.Text = dr[0].ToString();
            }
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
        SqlCommand cmd= new SqlCommand("UPDATE Hakkımızda set Metin=@p1",bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", txt_hakkimizda.Text);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}