using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_SuaVD : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        int mavd = Convert.ToInt32(Request.QueryString["MaVD"]);
        if (!IsPostBack)
        {
            if (Session["UserAdmin"] == null)
            {
                Response.Redirect("~/Dangnhap.aspx");
            }
            else
             {
                 string sql = "select *from THELOAI";
                 DataTable dt = new DataTable();
                 dt = x.GetDaTa(sql);
                 for (int i = 0; i < dt.Rows.Count; i++)
                 {
                     ddlSuaTL.Items.Add(i.ToString());
                     ddlSuaTL.Items[i].Text = dt.Rows[i]["TenTL"].ToString();
                     ddlSuaTL.Items[i].Value = dt.Rows[i]["MaTL"].ToString();
                 }
                 Calendar1.SelectedDate = DateTime.Today;
                 string sql1 = "select * from VIDEO where MaVD=" + mavd;
                 DataTable dt1 = new DataTable();
                 dt1 = x.GetDaTa(sql1);
                 if (dt1.Rows.Count != 0)
                 {
                     txtSuaTenVD.Text = dt1.Rows[0][3].ToString();
                     txtSuaURLVDL.Text = dt1.Rows[0][1].ToString();
                     txtSuaURLVDN.Text = dt1.Rows[0][2].ToString();
                     txtSuaCaSi.Text = dt1.Rows[0][6].ToString();
                     ddlSuaTL.Text = dt1.Rows[0][4].ToString();
                     txtNgaycapnhat.Text = dt1.Rows[0][7].ToString();
                     txtSuaTG.Text = dt1.Rows[0][5].ToString();

                 }
             }
            
        }
        
    }
    protected void btCapnhatVD_Click(object sender, EventArgs e)
    {
        int mavd = Convert.ToInt32(Request.QueryString["MaVD"]);
        try
         {
             string sql2 = "Update VIDEO set URLVideoL='" + txtSuaURLVDL.Text.ToString() + "',URLVideoN='" + txtSuaURLVDN.Text.ToString() + "',TenVD=N'" + txtSuaTenVD.Text.ToString() + "',MaTL=" + ddlSuaTL.SelectedItem.Value + ",TacGia=N'" + txtSuaTG.Text.ToString() + "',CaSi=N'" + txtSuaCaSi.Text.ToString() + "',NgayCapNhat='" + Calendar1.SelectedDate.ToString() + "' where MaVD=" + mavd;
        x.thuchienlenh(sql2);
        Response.Write("<script>alert('Sửa thành công!')</script>");
        lbBaoLoiSuaVD.Text = "Cập nhật thành công!";
        Response.Redirect("~/Admin/DSVideo.aspx");
         }
          catch
         {
        lbBaoLoiSuaVD.Text = "Cập nhật thất bại!";
         }
    }
    protected void btThoat_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/DSVideo.aspx");
    }
}