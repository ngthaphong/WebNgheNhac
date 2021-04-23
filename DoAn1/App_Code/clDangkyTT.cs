using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
/// <summary>
/// Summary description for clDangkyTT
/// </summary>
public class clDangkyTT
{
    SqlConnection chiakhoa = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
	public clDangkyTT()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool Kiemtradangnhap(string TenDN)
    {
        string Ktdangnhap = "select TenDN from THANHVIEN where TenDN='"+TenDN +"'";
        chiakhoa.Open();
        SqlCommand commanddangnhap = new SqlCommand(Ktdangnhap, chiakhoa);
        SqlDataReader rederdangnhap = commanddangnhap.ExecuteReader();
        if (rederdangnhap.HasRows)
        {
            chiakhoa.Close();
            return true;
        }
        else
        {
            chiakhoa.Close();
            return false;
        }
    }
    public bool Kiemtramatkhau(string matkhau)
    {
        string ktmk = "select MatKhau from THANHVIEN where MatKhau='"+matkhau+"'";
        chiakhoa.Open();
        SqlCommand commandmk = new SqlCommand(ktmk, chiakhoa);
        SqlDataReader readermatkhau = commandmk.ExecuteReader();
        if (readermatkhau.HasRows == false)
        {
            chiakhoa.Close();
            return false;
        }
        else
        {
            chiakhoa.Close();
            return true;
        }
    }
    public bool kiemtraemail(string email)
    {
        string ktemail = "select TenDN from THANHVIEN where Email='"+email+"'";
        chiakhoa.Open();
        SqlCommand ktem = new SqlCommand(ktemail, chiakhoa);
        SqlDataReader readeremail = ktem.ExecuteReader();
        if (readeremail.HasRows == false)
        {
            chiakhoa.Close();
            return false;
        }
        else
        {
            chiakhoa.Close();
            return true;
        }
    }
    public void Dlthanhvien( string hoten, string dienthoai, string ten, string mk, string t, string ngay, string e, string d, string gioitinh, string ns, string ch, string tl)
    {
        string them = "insert into THANHVIEN (HoTen,TenDN,MatKhau,DienThoai,Tuoi,NgayDangKy,Email,Diachi,GioiTinh,NgaySinh,CauHoiBaoMat,CauTraLoi)values(N'"+hoten+"',N'"+ten+"','"+ mk +"','"+dienthoai+"','"+t+"','"+ngay+"','"+e+"','"+d+"',N'"+gioitinh+"','"+ns+"','"+ch+"','"+tl+"')";
        chiakhoa.Open();
        SqlCommand insert = new SqlCommand(them, chiakhoa);
        insert.ExecuteNonQuery();
        chiakhoa.Close();

    }
}