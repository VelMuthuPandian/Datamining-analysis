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

public partial class Login : System.Web.UI.Page
{
    string a, b;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["meter"] = TextBox1.Text;
        con.Open();
        if(TextBox1.Text=="admin" && TextBox2.Text=="nimda")
        {
            Response.Redirect("Admin.aspx");
        }
        else
        {
        SqlDataAdapter sda = new SqlDataAdapter("select * from regis", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            a = ds.Tables[0].Rows[i]["meter"].ToString();
            b = ds.Tables[0].Rows[i]["pass"].ToString();
            if (a == TextBox1.Text && b == TextBox2.Text)
            {
                Response.Redirect("userdetails.aspx");
                break;
            }            
                RegisterStartupScript("msg", "<script>alert('Incorrect User Name And Password')</script>");            
        }
        }
    }
}
