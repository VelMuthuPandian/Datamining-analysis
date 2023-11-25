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

public partial class Details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Text = (string)Session["meter"];
        if (!IsPostBack)
        {
            Panel9.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            DropDownList2.Visible = false;
            DropDownList4.Visible = false;
            Label12.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Label17.Visible = false;
            Label18.Visible = false;
            Label19.Visible = false;
            Label20.Visible = false;
            Label21.Visible = false;
            Label22.Visible = false;
            Label23.Visible = false;
            Label24.Visible = false;
            Label25.Visible = false;
            Label26.Visible = false;
            Label27.Visible = false;
            Label28.Visible = false;
            Label30.Visible = false;
        }
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Panel9.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from Usersdetails where meter='" + Label7.Text + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            Label4.Text = ds.Tables[0].Rows[i]["meter"].ToString();
            Label5.Text = ds.Tables[0].Rows[i]["names"].ToString();
            Label6.Text = ds.Tables[0].Rows[i]["addr"].ToString();
        }
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Panel9.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
        con.Open();
        SqlDataAdapter ssy = new SqlDataAdapter("select distribution from regis where meter='" + Label7.Text + "'", con);
        DataSet dy = new DataSet();
        ssy.Fill(dy);
        Label66.Text = dy.Tables[0].Rows[0]["distribution"].ToString();
        SqlDataAdapter ssp = new SqlDataAdapter("select * from Usersdetails where meter='" + Label7.Text + "'", con);
        DataSet sp = new DataSet();
        ssp.Fill(sp);        
        int x11 = 0;
        do
        {
            Label56.Text = sp.Tables[0].Rows[x11]["recno"].ToString();
            Label58.Text = sp.Tables[0].Rows[x11]["names"].ToString();
            Label60.Text = sp.Tables[0].Rows[x11]["meter"].ToString();
            Label62.Text = sp.Tables[0].Rows[x11]["addr"].ToString();
            Label64.Text = sp.Tables[0].Rows[x11]["paydate"].ToString();
            Label68.Text = sp.Tables[0].Rows[x11]["yr"].ToString();
            Label70.Text = sp.Tables[0].Rows[x11]["dates"].ToString();
            Label72.Text = sp.Tables[0].Rows[x11]["unitrs"].ToString();
            Label74.Text = sp.Tables[0].Rows[x11]["otherrs"].ToString();
            Label76.Text = sp.Tables[0].Rows[x11]["fines"].ToString();
            Label78.Text = sp.Tables[0].Rows[x11]["totrs"].ToString();
            x11++;
        }
        while (x11 < sp.Tables[0].Rows.Count);
        con.Close();
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Panel9.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = true;
        con.Open();
        SqlDataAdapter ssx = new SqlDataAdapter("select condate from regis where meter='" + Label7.Text + "'", con);
        DataSet dx = new DataSet();
        ssx.Fill(dx);
        Label52.Text = dx.Tables[0].Rows[0]["condate"].ToString();
        SqlDataAdapter ssy = new SqlDataAdapter("select sum(totrs) as totals from Usersdetails where meter='" + Label7.Text + "'", con);
        DataSet sy = new DataSet();
        ssy.Fill(sy);
        Label54.Text = sy.Tables[0].Rows[0]["totals"].ToString();
        con.Close();
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Panel9.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = true;
        Panel8.Visible = false;
        con.Open();
        SqlDataAdapter ssq = new SqlDataAdapter("select condate from regis where meter='" + Label7.Text + "'", con);
        DataSet dq = new DataSet();
        ssq.Fill(dq);
        Label48.Text = dq.Tables[0].Rows[0]["condate"].ToString();
        SqlDataAdapter ssw = new SqlDataAdapter("select avg(totrs) as totals from Usersdetails where meter='" + Label7.Text + "'", con);
        DataSet sw = new DataSet();
        ssw.Fill(sw);
        Label50.Text = sw.Tables[0].Rows[0]["totals"].ToString();
        con.Close();
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Panel9.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = true;
        Panel7.Visible = false;
        Panel8.Visible = false;
        con.Open();
        SqlDataAdapter zzz = new SqlDataAdapter("select conunit,totrs,paydate,recno from Usersdetails where totrs=(select min(totrs) from Usersdetails where meter='"+Label7.Text+"')", con);
        DataSet zz = new DataSet();
        zzz.Fill(zz);
        for (int l = 0; l < zz.Tables[0].Rows.Count; l++)
        {
            Label40.Text = zz.Tables[0].Rows[l]["conunit"].ToString();
            Label42.Text = zz.Tables[0].Rows[l]["totrs"].ToString();
            Label44.Text = zz.Tables[0].Rows[l]["paydate"].ToString();
            Label46.Text = zz.Tables[0].Rows[l]["recno"].ToString();
        }
        con.Close();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Panel9.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
        con.Open();
        SqlDataAdapter a2 = new SqlDataAdapter("select conunit,totrs,paydate,recno from Usersdetails where totrs=(select max(totrs) from Usersdetails)", con);
        DataSet s2 = new DataSet();
        a2.Fill(s2);
        for (int x = 0; x < s2.Tables[0].Rows.Count; x++)
        {
            Label32.Text = s2.Tables[0].Rows[x]["conunit"].ToString();
            Label34.Text = s2.Tables[0].Rows[x]["totrs"].ToString();
            Label36.Text = s2.Tables[0].Rows[x]["paydate"].ToString();
            Label38.Text = s2.Tables[0].Rows[x]["recno"].ToString();
        }
        con.Close();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Panel9.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
        con.Open();
        SqlDataAdapter dsa2 = new SqlDataAdapter("select distinct dates from Usersdetails where meter='" + Label7.Text + "'", con);
        DataSet ssd = new DataSet();
        dsa2.Fill(ssd);
        for (int v = 0; v < ssd.Tables[0].Rows.Count; v++)
        {
            DropDownList3.Items.Add(ssd.Tables[0].Rows[v]["dates"].ToString());
        }
        con.Close();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Panel9.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
        con.Open();
        SqlDataAdapter dsa1 = new SqlDataAdapter("select distinct yr from Usersdetails where meter='" + Label7.Text + "'", con);
        DataSet setd = new DataSet();
        dsa1.Fill(setd);
        for (int z = 0; z < setd.Tables[0].Rows.Count; z++)
        {
            DropDownList1.Items.Add(setd.Tables[0].Rows[z]["yr"].ToString());
        }
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        Label12.Visible = true;
        DropDownList2.Visible = true;
        SqlDataAdapter a1 = new SqlDataAdapter("select distinct dates from Usersdetails where meter='" + Label7.Text + "' and yr='" + DropDownList1.SelectedItem.Value + "'", con);
        DataSet s1 = new DataSet();
        a1.Fill(s1);
        for (int y = 0; y < s1.Tables[0].Rows.Count; y++)
        {
            DropDownList2.Items.Add(s1.Tables[0].Rows[y]["dates"].ToString());
        }
        con.Close();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label12.Visible = true;
        Label13.Visible = true;
        Label14.Visible = true;
        Label15.Visible = true;
        Label16.Visible = true;
        Label17.Visible = true;
        Label18.Visible = true;
        Label19.Visible = true;
        Label20.Visible = true;
        con.Open();
        SqlDataAdapter a6 = new SqlDataAdapter("select conunit,totrs,paydate,recno from Usersdetails where meter='" + Label7.Text + "' and dates='" + DropDownList2.SelectedItem.Value + "' and yr='" + DropDownList1.SelectedItem.Value + "'", con);
        DataSet s6 = new DataSet();
        a6.Fill(s6);
        for (int o = 0; o < s6.Tables[0].Rows.Count; o++)
        {
            Label14.Text = s6.Tables[0].Rows[o]["conunit"].ToString();
            Label16.Text = s6.Tables[0].Rows[o]["totrs"].ToString();
            Label18.Text = s6.Tables[0].Rows[o]["paydate"].ToString();
            Label20.Text = s6.Tables[0].Rows[o]["recno"].ToString();
        }
        con.Close();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        DropDownList4.Visible = true;
        Label21.Visible = true;
        SqlDataAdapter a3 = new SqlDataAdapter("select distinct yr from Usersdetails where meter='" + Label7.Text + "' and dates='" + DropDownList3.SelectedItem.Value + "'", con);
        DataSet s3 = new DataSet();
        a3.Fill(s3);
        for (int w = 0; w < s3.Tables[0].Rows.Count; w++)
        {
            DropDownList4.Items.Add(s3.Tables[0].Rows[w]["yr"].ToString());
        }
        con.Close();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label22.Visible = true;
        Label23.Visible = true;
        Label24.Visible = true;
        Label25.Visible = true;
        Label26.Visible = true;
        Label27.Visible = true;
        Label28.Visible = true;
        Label21.Visible = true;
        Label30.Visible = true;
        con.Open();
        SqlDataAdapter a4 = new SqlDataAdapter("select conunit,totrs,paydate,recno from Usersdetails where meter='" + Label7.Text + "' and dates='" + DropDownList3.SelectedItem.Value + "' and yr='" + DropDownList4.SelectedItem.Value + "'", con);
        DataSet s4 = new DataSet();
        a4.Fill(s4);
        for (int u = 0; u < s4.Tables[0].Rows.Count; u++)
        {
            Label22.Text = s4.Tables[0].Rows[u]["conunit"].ToString();
            Label24.Text = s4.Tables[0].Rows[u]["totrs"].ToString();
            Label26.Text = s4.Tables[0].Rows[u]["paydate"].ToString();
            Label28.Text = s4.Tables[0].Rows[u]["recno"].ToString();
        }
        con.Close();
    }
}
