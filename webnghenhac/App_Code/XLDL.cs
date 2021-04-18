using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for XLDL
/// </summary>
public class XLDL
{
    public string StrCnn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString.ToString();
    public DataTable GetDaTa(string Lenhsql)
    {
        SqlConnection sqlcon = new SqlConnection(StrCnn);
        {
            SqlDataAdapter sqlDA = new SqlDataAdapter(Lenhsql, sqlcon);
            DataTable dt = new DataTable();
            sqlDA.Fill(dt);
            return dt;
        }
    }
    public DataTable Docbang(string Lenhsql)
    {
        using (SqlConnection sqlcon = new SqlConnection(StrCnn))
        {
            SqlDataAdapter bodocghi = new SqlDataAdapter(Lenhsql, sqlcon);
            DataTable bang = new DataTable();
            bodocghi.Fill(bang);
            return bang;
        }
    }
    public void thuchienlenh(string Lenhsql)
    {
        using (SqlConnection cnn = new SqlConnection(StrCnn))
        {
            cnn.Open();
            SqlCommand bolenh = new SqlCommand(Lenhsql, cnn);
            bolenh.ExecuteNonQuery();
            cnn.Close();
        }
    }

    public string GetDaTaID(string Lenhsql)
    {
        SqlConnection sqlcon = new SqlConnection(StrCnn);
        {
            SqlDataAdapter sqlDA = new SqlDataAdapter(Lenhsql, sqlcon);
            DataTable dt = new DataTable();
            sqlDA.Fill(dt);
            string path = dt.Rows[0]["URLBaiHat"].ToString();
            return path;
        }
    }

}