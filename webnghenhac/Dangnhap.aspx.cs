using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_DangnhapAdmin : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }
    protected void btLogin_Click(object sender, EventArgs e)
    {
        KetNoiDangNhap.cmd = new System.Data.SqlClient.SqlCommand("login_form", KetNoiDangNhap.GetConn());
        KetNoiDangNhap.cmd.CommandType = System.Data.CommandType.StoredProcedure;
        KetNoiDangNhap.cmd.Parameters.AddWithValue("@user", txtAccount.Text);
        KetNoiDangNhap.cmd.Parameters.AddWithValue("@pass", txtPasswork.Text);
        KetNoiDangNhap.rd = KetNoiDangNhap.cmd.ExecuteReader();
        bool login = KetNoiDangNhap.rd.Read();
        if (login)
        {

            int check = phanquyen_asp(txtAccount.Text);
            switch (check)
            {
                case 0: //truong hop Admin
                    Session["UserAdmin"] = txtAccount.Text;
                    Session["UserName"] = txtAccount.Text;
                    Response.Write("<script>alert('Đăng nhập thành công!')</script>");
                    Response.Redirect("~/Admin/Admin.aspx");


                    break;
                case 1: //  truong hop thanh vien
                    Session["UserName"] = txtAccount.Text;
                    Response.Write("<script>alert('Đăng nhập thành công!')</script>");
                    Response.Redirect("~/TrangChu.aspx");
                    break;

            }
        }
        else
        {
            Response.Write("<script>alert('Sai tên đăng nhập hoặc mật khẩu!')</script>");
            return;

        }

    }
    public int phanquyen_asp(string input)
    {
        KetNoiDangNhap.cmd = new System.Data.SqlClient.SqlCommand("kiemtraquyen", KetNoiDangNhap.GetConn());
        KetNoiDangNhap.cmd.CommandType = System.Data.CommandType.StoredProcedure;
        KetNoiDangNhap.cmd.Parameters.AddWithValue("@username", input);
        int maquyen = (int)KetNoiDangNhap.cmd.ExecuteScalar();
        return maquyen;
    }

}