using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Dangky : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btDangky_Click(object sender, EventArgs e)
    {
        clDangkyTT dangky = new clDangkyTT();
        string hoten = txtHoTen.Text;
        string dienthoai = txtDienThoai.Text;
        string ngay = ddlngay.SelectedValue.ToString();
        string thang = ddlthang.SelectedValue.ToString();
        string nam = txtnam.Text;
        string ngaythangnam =thang + "/"+ngay+"/" + nam;
        string gioitinh = ddlgioitinh.SelectedValue.ToString();
        string cauhoi = ddlcauhoi.SelectedValue.ToString();
        string trloi = ddltrloi.SelectedValue.ToString();
        if (dangky.Kiemtradangnhap(txtDangNhap.Text))
        {
            Response.Write("<script> alert('Tên đăng nhập đã tồn tai!!!!Vui lòng đăng ký lai.')</script>");
            txtDangNhap.Focus();
            txtDangNhap.Text = "";
        }
        else if (dangky.kiemtraemail(txtemail.Text))
        {
            Response.Write("<script> alert('Email đã tồn tại !!Vui lòng đăng ký Email mới!')</script>");
            txtemail.Focus();
            txtemail.Text = "";
        }
        else
        {
            dangky.Dlthanhvien(txtHoTen.Text, txtDienThoai.Text,txtDangNhap.Text, txtMatKhau.Text, txttuoi.Text, DateTime.Now.ToShortDateString(), txtemail.Text, txtdiachi.Text, gioitinh, ngaythangnam, cauhoi, trloi);
            lblthongbao.Visible = false;
            Response.Redirect("~/TrangChu.aspx");
        }

    }
    protected void btLamlai_Click(object sender, EventArgs e)
    {
        txtDangNhap.Text ="";
        txtdiachi.Text ="";
        txtemail.Text ="";
        txtnhaplai.Text ="";
        txttuoi.Text ="";
        txtMatKhau.Text ="";

    }
    protected void btThoat_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/TrangChu.aspx");
    }
}