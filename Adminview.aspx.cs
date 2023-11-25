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

public partial class Adminview : System.Web.UI.Page
{
    string t3;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel4.Visible = false;
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        Label2.Visible = true;
        Label4.Visible = true;
        Label3.Visible = true;
        Label5.Visible = true;        
        SqlDataAdapter sda = new SqlDataAdapter("select * from Usersdetails where meter='" + DropDownList1.SelectedItem.Value + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
        {
            Label4.Text = ds.Tables[0].Rows[j]["names"].ToString();
            Label5.Text = ds.Tables[0].Rows[j]["addr"].ToString();
        }       
        con.Close();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList5.Visible = true;
        Label12.Visible = true;
        con.Open();
        SqlDataAdapter sdas1 = new SqlDataAdapter("select distinct yr from Usersdetails where meter='" + DropDownList4.SelectedItem.Value + "'", con);
        DataSet sds1 = new DataSet();
        sdas1.Fill(sds1);
        for (int z1 = 0; z1 < sds1.Tables[0].Rows.Count; z1++)
        {
            DropDownList5.Items.Add(sds1.Tables[0].Rows[z1]["yr"].ToString());
        }
        con.Close();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter abc = new SqlDataAdapter("select dates,'Usage'= case when  totrs<=90 then 'GOOD'when totrs>=91 and totrs<=160 then 'BETER'when totrs>=161 then 'BAD' else '' end from Usersdetails where yr='" + DropDownList5.SelectedItem.Value + "' and meter='" + DropDownList4.SelectedItem.Value + "'", con);
        DataSet ab = new DataSet();
        abc.Fill(ab);
        GridView3.DataSource = ab;
        GridView3.DataBind();
        con.Close();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Visible = true;
        Label2.Visible = true;
        con.Open();
        SqlDataAdapter sdas = new SqlDataAdapter("select distinct yr from Usersdetails where meter='" + DropDownList3.SelectedItem.Value + "'", con);
        DataSet sds = new DataSet();
        sdas.Fill(sds);
        for (int z = 0; z < sds.Tables[0].Rows.Count; z++)
        {
            DropDownList2.Items.Add(sds.Tables[0].Rows[z]["yr"].ToString());
        }
        con.Close();

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView2.DataSource = FlipDataSet(c1());
        GridView2.DataBind();
    }
    public DataSet c1()
    {
        SqlDataAdapter adp1 = new SqlDataAdapter("select dates as Month,'Usage'= case when  totrs<=90 then 'GOOD'when totrs>=91 and totrs<=160 then 'BETER'when totrs>=161 then 'BAD' else '' end from Usersdetails where yr='" + DropDownList2.SelectedItem.Value + "' and meter='" + DropDownList3.SelectedItem.Value + "'", con);
        DataSet ds = new DataSet();
        adp1.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        return ds;
    }

    public DataSet FlipDataSet(DataSet my_DataSet)
    {
        DataSet ds = new DataSet();
        foreach (DataTable dt in my_DataSet.Tables)
        {
            DataTable table = new DataTable();
            for (int i = 0; i <= dt.Rows.Count; i++)
            {
                table.Columns.Add(Convert.ToString(i));
            }
            DataRow r = null;
            for (int k = 0; k < dt.Columns.Count; k++)
            {
                r = table.NewRow();
                r[0] = dt.Columns[k].ToString();
                for (int j = 1; j <= dt.Rows.Count; j++)
                    r[j] = dt.Rows[j - 1][k];
                table.Rows.Add(r);
            }
            ds.Tables.Add(table);
        }
        return ds;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton3.Visible = true;
        ImageButton4.Visible = true;
        Label15.Visible = true;
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        DropDownList1.Visible = true;
        Label9.Visible = true;
        con.Open();
            SqlDataAdapter sda1 = new SqlDataAdapter("select meter from regis", con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1);
            for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
            {
                DropDownList1.Items.Add(ds1.Tables[0].Rows[i]["meter"].ToString());
            }        
        con.Close();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel4.Visible = false;
        Panel5.Visible = false;
        con.Open();
        SqlDataAdapter sss = new SqlDataAdapter("select distinct meter from regis", con);
        DataSet ss = new DataSet();
        sss.Fill(ss);
        for(int m=0;m<ss.Tables[0].Rows.Count;m++)
        {
            DropDownList3.Items.Add(ss.Tables[0].Rows[m]["meter"].ToString());
        }
        con.Close();
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel4.Visible = true;
        Panel5.Visible = false;
        Label12.Visible = false;
        DropDownList5.Visible = false;
        con.Open();
        SqlDataAdapter sss1 = new SqlDataAdapter("select distinct meter from regis", con);
        DataSet ss1 = new DataSet();
        sss1.Fill(ss1);
        for (int m1 = 0; m1 < ss1.Tables[0].Rows.Count; m1++)
        {
            DropDownList4.Items.Add(ss1.Tables[0].Rows[m1]["meter"].ToString());
        }
        con.Close();
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;        
        Panel4.Visible = false;
        Panel5.Visible = true;
        con.Open();
        SqlDataAdapter qaz = new SqlDataAdapter("select Meter,Feb,April,June,Aug,Oct,Dec from(select meter,dates,totrs,yr from Usersdetails) up PIVOT(sum(totrs) for dates IN(Feb,April,June,Aug,Oct,Dec)) as pvt order by yr", con);
        DataSet az = new DataSet();
        qaz.Fill(az);
        GridView4.DataSource = az;
        GridView4.DataBind();
        con.Close();
    }
}