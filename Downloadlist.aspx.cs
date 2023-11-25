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

public partial class Downloadlist : System.Web.UI.Page
{
    ids identys = new ids();
    string pexe,exe1;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Convert.ToString(identys.fileid());
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select id,names from downloads", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        con.Open();
        SqlDataAdapter datas = new SqlDataAdapter("delete from downloads where id='" + GridView1.Rows[e.RowIndex].Cells[0].Text + "'", con);
        DataSet das = new DataSet();
        datas.Fill(das);
        con.Close();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        byte[] filebytes = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
        exe1 = System.IO.Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
        pexe = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
        FileUpload1.PostedFile.InputStream.Read(filebytes, 0, filebytes.Length);
        SqlCommand cmd = new SqlCommand("insert into downloads values('" + Label2.Text + "','"+ exe1 +"',@files,'"+pexe+"')", con);
        cmd.Parameters.AddWithValue("@files", filebytes);
        cmd.ExecuteNonQuery();
        SqlDataAdapter sda1 = new SqlDataAdapter("select id,names from downloads", con);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();
        con.Close();
    }
}
