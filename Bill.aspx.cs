using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Bill : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
       Label26.Text = (string)Session["meter"];
        con.Open();
        SqlDataAdapter ssy = new SqlDataAdapter("select distribution from regis where meter='" + Label26.Text + "'", con);
        DataSet dy = new DataSet();
        ssy.Fill(dy);
        Label12.Text = dy.Tables[0].Rows[0]["distribution"].ToString();
        SqlDataAdapter ssp = new SqlDataAdapter("select * from Usersdetails where meter='" + Label26.Text + "'", con);
        DataSet sp = new DataSet();
        ssp.Fill(sp);
        int x11 = 0;
        do
        {
            Label2.Text = sp.Tables[0].Rows[x11]["recno"].ToString();
            Label4.Text = sp.Tables[0].Rows[x11]["names"].ToString();
            Label6.Text = sp.Tables[0].Rows[x11]["meter"].ToString();
            Label8.Text = sp.Tables[0].Rows[x11]["addr"].ToString();
            Label10.Text = sp.Tables[0].Rows[x11]["paydate"].ToString();
            Label16.Text = sp.Tables[0].Rows[x11]["yr"].ToString();
            Label14.Text = sp.Tables[0].Rows[x11]["dates"].ToString();
            Label18.Text = sp.Tables[0].Rows[x11]["unitrs"].ToString();
            Label20.Text = sp.Tables[0].Rows[x11]["otherrs"].ToString();
            Label22.Text = sp.Tables[0].Rows[x11]["fines"].ToString();
            Label24.Text = sp.Tables[0].Rows[x11]["totrs"].ToString();
            x11++;
        }
        while (x11 < sp.Tables[0].Rows.Count);
        con.Close();
    }
}
