using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ThemQCao : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserAdmin"] == null)
            {
                Response.Redirect("~/Dangnhap.aspx");
            }
            
        }
    }
    protected void btThemQC_Click(object sender, EventArgs e)
    {
        try
        {            
            string sql = "insert into QUANGCAO values(N'"+txtThemTenCty.Text+"',N'"+flHinhminhhoa.FileName.ToString()+"',N'"+txtHref.Text+"','"+txtNgaybatdau.Text+"','"+txtNgayhethan.Text+"')";
            x.thuchienlenh(sql);
            flHinhminhhoa.SaveAs(MapPath("../images/" + flHinhminhhoa.FileName.ToString()));
            Response.Write("<script>alert('Thêm thành công!')</script>");
            txtThemTenCty.Text = "";
            txtHref.Text = "";
            txtNgaybatdau.Text = "";
            txtNgayhethan.Text = "";
            lbThongbaoloiQC.Text = "Thêm Quảng Cáo thành công!!";
        }
        catch
        {
            lbThongbaoloiQC.Text = "Thêm Quảng Cáo thất bại!!";
        }
    }
    protected void btthoat_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/DSQuangCao.aspx");
    }
}