using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for KetNoiDangNhap
/// </summary>
public class KetNoiDangNhap
{
    public static SqlConnection cnn = null;
    public static SqlDataReader rd;
    public static DataSet ds;
    public static SqlCommand cmd;

    public static SqlConnection GetConn()
    {
        string conn = ConfigurationManager.ConnectionStrings["conn"].ToString();
        cnn = new SqlConnection(conn);
        cnn.Open();
        return cnn;
    }
	public KetNoiDangNhap()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}