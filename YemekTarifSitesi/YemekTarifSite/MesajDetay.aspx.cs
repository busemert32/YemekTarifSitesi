using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    string mesajid;
    protected void Page_Load(object sender, EventArgs e)
    {
        mesajid = Request.QueryString["mesajid"];//diğer formdan taşınan değer.
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("Select * from Mesajlar where mesajid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", mesajid);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txt_mesajsahip.Text = dr[1].ToString();
                txt_MesajMail.Text = dr[3].ToString();
                Txt_MesajBaslik.Text = dr[2].ToString();
                Txt_Mesajİcerik.Text = dr[4].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}