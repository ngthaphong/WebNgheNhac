using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DoiMatKhau : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btDongy_Click(object sender, EventArgs e)
    {
        
            string TenDN = txtTenDN.Text;
            string MatKhau = txtMatkhau.Text;
            string Matkhaumoi = txtMatkhaumoi.Text;
            string LenhSql = "select * from THANHVIEN where TenDN=N'"+TenDN +"'and MatKhau='"+MatKhau+"'";
            try
           {
                DataTable dt = new DataTable();
                dt = x.GetDaTa(LenhSql);
                if (dt.Rows.Count != 0)
                {
                    string LenhCapNhat = "UPDATE THANHVIEN Set MatKhau='"+Matkhaumoi+"'where TenDN=N'"+TenDN+"'";
                    x.thuchienlenh(LenhCapNhat);

                    Response.Redirect("~/Dangnhap.aspx");

                }
                else
                {
                    lbBaoloi.Text = "Tên đăng nhập hoặc mật khẩu không đúng";
                }
            }
            catch
            {
                lbBaoloi.Text = "Thất Bại!";
            }

        }
    
} 
