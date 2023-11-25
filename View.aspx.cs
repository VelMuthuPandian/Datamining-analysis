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

public partial class View : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]); 
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = (string)Session["meter"];
        if (!IsPostBack)
        {          
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from regis where meter='" + Label2.Text + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                TextBox1.Text = ds.Tables[0].Rows[i]["meter"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[i]["uname"].ToString();
                RadioButtonList1.Text = ds.Tables[0].Rows[i]["gender"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[i]["door"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[i]["street"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[i]["distribution"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[i]["circle"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[i]["region"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[i]["state"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[i]["pincode"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[i]["cell"].ToString();
                TextBox11.Text = ds.Tables[0].Rows[i]["email"].ToString();
                DropDownList1.Text = ds.Tables[0].Rows[i]["phase"].ToString();
                DropDownList2.Text = ds.Tables[0].Rows[i]["type"].ToString();
                TextBox12.Text = ds.Tables[0].Rows[i]["condate"].ToString();
                RadioButtonList2.Text = ds.Tables[0].Rows[i]["connstatus"].ToString();
                RadioButtonList3.Text = ds.Tables[0].Rows[i]["extracon"].ToString();
                if (RadioButtonList3.Text == "Yes")
                {
                    TextBox13.Text = ds.Tables[0].Rows[i]["conno"].ToString();
                    DropDownList3.Text = ds.Tables[0].Rows[i]["phases"].ToString();
                    DropDownList4.Text = ds.Tables[0].Rows[i]["types"].ToString();
                    TextBox14.Text = ds.Tables[0].Rows[i]["condates"].ToString();
                    RadioButtonList4.Text = ds.Tables[0].Rows[i]["constatus"].ToString();
                }
                else if (RadioButtonList3.Text == "No")
                {

                    Label34.Visible = false;
                    Label35.Visible = false;
                    Label36.Visible = false;
                    Label37.Visible = false;
                    Label38.Visible = false;
                    TextBox13.Visible = false;
                    DropDownList3.Visible = false;
                    DropDownList4.Visible = false;
                    TextBox14.Visible = false;
                    RadioButtonList4.Visible = false;
                }
            }
            con.Close();
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("userdetails.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        if (RadioButtonList3.SelectedItem.Value == "No")
        {
            SqlCommand cdm = new SqlCommand("update regis set meter='" + TextBox1.Text + "' ,uname='" + TextBox2.Text + "' ,gender='" + RadioButtonList1.SelectedItem.Value + "' ,door='" + TextBox3.Text + "' ,street='" + TextBox4.Text + "' ,distribution='" + TextBox5.Text + "' ,circle='" + TextBox6.Text + "' ,region='" + TextBox7.Text + "' ,state='" + TextBox8.Text + "' ,pincode='" + TextBox9.Text + "' ,cell='" + TextBox10.Text + "' ,email='" + TextBox11.Text + "' ,phase='" + DropDownList1.SelectedItem.Value + "' ,type='" + DropDownList2.SelectedItem.Value + "' ,condate='" + TextBox12.Text + "' ,connstatus='" + RadioButtonList2.SelectedItem.Value + "' ,extracon='" + RadioButtonList3.SelectedItem.Value + "' where meter='" + TextBox1.Text + "'", con);
            cdm.ExecuteNonQuery();
        }
        else if (RadioButtonList3.SelectedItem.Value == "Yes")
        {
            SqlCommand cmd = new SqlCommand("update regis set meter='" + TextBox1.Text + "' ,uname='" + TextBox2.Text + "' ,gender='" + RadioButtonList1.SelectedItem.Value + "' ,door='" + TextBox3.Text + "' ,street='" + TextBox4.Text + "' ,distribution='" + TextBox5.Text + "' ,circle='" + TextBox6.Text + "' ,region='" + TextBox7.Text + "' ,state='" + TextBox8.Text + "' ,pincode='" + TextBox9.Text + "' ,cell='" + TextBox10.Text + "' ,email='" + TextBox11.Text + "' ,phase='" + DropDownList1.SelectedItem.Value + "' ,type='" + DropDownList2.SelectedItem.Value + "' ,condate='" + TextBox12.Text + "' ,connstatus='" + RadioButtonList2.SelectedItem.Value + "' ,extracon='" + RadioButtonList3.SelectedItem.Value + "',conno='" + TextBox13.Text + "' ,phases='" + DropDownList3.SelectedItem.Value + "',types='" + DropDownList4.SelectedItem.Value + "',condates='" + TextBox14.Text + "',constatus='" + RadioButtonList4.SelectedItem.Value + "' where meter='"+TextBox1.Text+"'", con);
            cmd.ExecuteNonQuery();
        }
        con.Close();
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
            TextBox13.Visible = true;
            DropDownList3.Visible = true;
            DropDownList4.Visible = true;
            TextBox14.Visible = true;
            RadioButtonList4.Visible = true;
        }
        else if (RadioButtonList3.SelectedItem.Value == "No")
        {
            Label34.Visible = false;
            Label35.Visible = false;
            Label36.Visible = false;
            Label37.Visible = false;
            Label38.Visible = false;
            TextBox13.Visible = false;
            DropDownList3.Visible = false;
            DropDownList4.Visible = false;
            TextBox14.Visible = false;
            RadioButtonList4.Visible = false;
        }
    }
}
