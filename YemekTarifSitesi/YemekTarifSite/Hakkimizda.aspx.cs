using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Hakkimizda : System.Web.UI.Page
{
    Baglanti bgl= new Baglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Hakkımızda", bgl.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList3.DataSource = dr;
        DataList3.DataBind();
       
    }
}