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

public partial class Downloading : System.Web.UI.Page
{
    string iding;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        iding = Request.Params["id"];
        SqlCommand cmd = new SqlCommand("select * from downloads where id = '" + iding + "'", con);
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = 1;
        DataTable dt = GetData(cmd);
        if (dt != null)
        {            
            Byte[] bytes = (Byte[])dt.Rows[0]["files"];
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            switch (dt.Rows[0]["exet"].ToString())
            {
                case ".pdf":
                    Response.ContentType = "application/pdf";
                    break;               
                case ".doc":
                    Response.ContentType = "application/msword";
                    break;
                case ".ppt":
                    Response.ContentType = "application/ppt";
                    break;
                case ".zip":
                    Response.ContentType = "application/zip";
                    break;
                case ".xls":
                case ".csv":
                    Response.ContentType = "application/xls";
                    break;
                case ".htm":
                case ".html":
                    Response.ContentType = "text/html";
                    break;
                case ".txt":
                    Response.ContentType = "text/plain";
                    break;
                case ".exe":
                    Response.ContentType = "application/zip";
                    break;

                default:
                    Response.ContentType = "application/octet-stream";
                    break;
            }
            Response.AddHeader("content-disposition", "attachment;filename=" + dt.Rows[0]["names"].ToString());
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }
    }
    private DataTable GetData(SqlCommand cmd)
    {

        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
        }
        catch
        {
            return null;
        }

        finally
        {
            con.Close();
            sda.Dispose();
            con.Dispose();
        }
    }
}
