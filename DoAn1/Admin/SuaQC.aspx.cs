using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_SuaQC : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)

    {
        int stt = Convert.ToInt32(Request.QueryString["STT"]);
        if(!IsPostBack)
        {
            if (Session["UserAdmin"] == null)
            {
                Response.Redirect("~/Dangnhap.aspx");
            }
            else
             {
                 string sql1 = "select * from QUANGCAO where STT=" + stt;
                 DataTable dt1 = new DataTable();
                 dt1 = x.GetDaTa(sql1);
                 if (dt1.Rows.Count != 0)
                 {
                     txtSuaTenCty.Text = dt1.Rows[0][1].ToString();
                     txtHref.Text = dt1.Rows[0][3].ToString();
                     txtNgaybatdau.Text = dt1.Rows[0][4].ToString();
                     txtNgayhethan.Text = dt1.Rows[0][5].ToString();
                  }          
            }
        }
        
    }
    protected void btCapnhatQC_Click(object sender, EventArgs e)
    {
        int stt = Convert.ToInt32(Request.QueryString["STT"]);
        try
        {
            if (flHinhminhhoa.HasFile)
            {

                string sql = "Update QUANGCAO set TenCongTy=N'" + txtSuaTenCty.Text.ToString() + "',HinhMinhHoa=N'" + flHinhminhhoa.FileName.ToString() + "',Href=N'" + txtHref.Text.ToString() + "',NgayBatDau='" + txtNgaybatdau.Text.ToString() + "',NgayHetHan='" + txtNgayhethan.Text.ToString() + "' where STT=" + stt; 
                x.thuchienlenh(sql);
                flHinhminhhoa.SaveAs(MapPath("../Images/" + flHinhminhhoa.FileName.ToString()));
                Response.Redirect("~/Admin/DSQuangCao.aspx");
            }
            else
            {
                string sql = "Update QUANGCAO set TenCongTy=N'" + txtSuaTenCty.Text.ToString() +"',Href=N'" + txtHref.Text.ToString() + "',NgayBatDau='" + txtNgaybatdau.Text.ToString() + "',NgayHetHan='" + txtNgayhethan.Text.ToString() + "'where STT=" + stt; 
                x.thuchienlenh(sql);
                Response.Redirect("~/Admin/DSQuangCao.aspx");
            }
        }
        catch (Exception ex)
        {
            lbThongbaoloiQC.Text = "Cập nhật thất bại !";
        } 
    }
}