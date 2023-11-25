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

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label34.Visible = false;
            Label35.Visible = false;
            Label36.Visible = false;
            Label37.Visible = false;
            Label38.Visible = false;
            TextBox15.Visible = false;
            TextBox16.Visible = false;
            DropDownList3.Visible = false;
            DropDownList4.Visible = false;
            RadioButtonList4.Visible = false;
        }
    }
    protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList3.SelectedItem.Value == "Yes")
        {
            Label34.Visible = true;
            Label35.Visible = true;
            Label36.Visible = true;
            Label37.Visible = true;
            Label38.Visible = true;
            TextBox15.Visible = true;
            TextBox16.Visible = true;
            DropDownList3.Visible = true;
            DropDownList4.Visible = true;
            RadioButtonList4.Visible = true;
        }
        else if (RadioButtonList3.SelectedItem.Value == "No")
        {
            Label34.Visible = false;
            Label35.Visible = false;
            Label36.Visible = false;
            Label37.Visible = false;
            Label38.Visible = false;
            TextBox15.Visible= false;
            TextBox16.Visible = false;
            DropDownList3.Visible = false;
            DropDownList4.Visible = false;
            RadioButtonList4.Visible = false;
        }
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        if (RadioButtonList3.SelectedItem.Value == "Yes")
        {
            SqlCommand cmd = new SqlCommand("insert into regis values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + RadioButtonList1.SelectedItem.Value + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + DropDownList1.SelectedItem.Value + "','" + DropDownList2.SelectedItem.Value + "','" + TextBox14.Text + "','" + RadioButtonList2.SelectedItem.Value + "','" + RadioButtonList3.SelectedItem.Value + "','" + TextBox15.Text + "','" + DropDownList3.SelectedItem.Value + "','" + DropDownList4.SelectedItem.Value + "','" + TextBox16.Text + "','" + RadioButtonList4.SelectedItem.Value + "')", con);
            cmd.ExecuteNonQuery();
            RegisterStartupScript("msg", "<script>alert('Registered Successfully...')</script>");
        }
        else if (RadioButtonList3.SelectedItem.Value == "No")
        {
            SqlCommand cmd1 = new SqlCommand("insert into regis values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + RadioButtonList1.SelectedItem.Value + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + DropDownList1.SelectedItem.Value + "','" + DropDownList2.SelectedItem.Value + "','" + TextBox14.Text + "','" + RadioButtonList2.SelectedItem.Value + "','" + RadioButtonList3.SelectedItem.Value + "',NULL,NULL,NULL,NULL,NULL)", con);
            cmd1.ExecuteNonQuery();
            RegisterStartupScript("msg", "<script>alert('Registered Successfully...')</script>");
        }        
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox10.Text = "";
        TextBox9.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";
        RadioButtonList1.SelectedIndex = -1;
        RadioButtonList2.SelectedIndex = -1;
        RadioButtonList3.SelectedIndex = -1;
        RadioButtonList4.SelectedIndex = -1;
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        DropDownList3.SelectedIndex = 0;
        DropDownList4.SelectedIndex = 0;
        Response.Redirect("Default.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
