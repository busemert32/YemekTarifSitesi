using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GununYemegi : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Yemekler where Durum=1", bgl.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }
}