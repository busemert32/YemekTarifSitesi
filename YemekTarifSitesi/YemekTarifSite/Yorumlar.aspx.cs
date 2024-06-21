using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();
    string islem = "";
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //onaylı yorumlar
        SqlCommand cmd = new SqlCommand("Select * from Yorumlar where YorumOnay=1", bgl.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //onaysız yorumlar
        SqlCommand cmd2 = new SqlCommand("Select * from Yorumlar where YorumOnay=0", bgl.baglanti());
        SqlDataReader dr2 = cmd2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();

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
}