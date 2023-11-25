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

public partial class Adminchart : System.Web.UI.Page
{
    int a, b, c, d, f;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label20.Text = (string)Session["meter"];
        if (!IsPostBack)
        {
            TextBox1.Text = Convert.ToString(System.DateTime.Now.Year);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select meter from regis", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i]["meter"].ToString());
            }
            con.Close();
        }
    }   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();       
        SqlDataAdapter sda1 = new SqlDataAdapter("select names,addr from Usersdetails where meter='"+DropDownList1.SelectedItem.Value+"'", con);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1);
        Label21.Text=ds1.Tables[0].Rows[0]["names"].ToString();     
        Label22.Text=ds1.Tables[0].Rows[0]["addr"].ToString();
        con.Close();
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Usersdetails values('" + DropDownList1.SelectedItem.Value + "','" + Label21.Text + "','" + Label22.Text + "','" + DropDownList2.SelectedItem.Value + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)    
    {
        a = Convert.ToInt32(TextBox5.Text);
        b = Convert.ToInt32(TextBox6.Text);
        c = Convert.ToInt32(TextBox7.Text);
        d = Convert.ToInt32(TextBox8.Text);
        f = a + b + c + d;
        TextBox9.Text = Convert.ToString(f);
    }
}
