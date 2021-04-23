using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_SuaBH : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        int Id = Convert.ToInt32(Request.QueryString["Id"]);       
            if(!IsPostBack)
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

                    string sql1 = "select * from BAIHAT where Id=" + Id;
                    DataTable dt1 = new DataTable();
                    dt1 = x.GetDaTa(sql1);
                    if (dt1.Rows.Count != 0)
                    {
                        txtSuaTenBH.Text = dt1.Rows[0][2].ToString();
                        txtSuaURLBH.Text = dt1.Rows[0][1].ToString();
                        txtSuaCaSi.Text = dt1.Rows[0][3].ToString();
                        ddlSuaTL.Text = dt1.Rows[0][4].ToString();
                        txtNgaycapnhat.Text = dt1.Rows[0][6].ToString();
                        txtSuaTG.Text = dt1.Rows[0][5].ToString();
                        txtSuaLoiBH.Text = dt1.Rows[0][7].ToString().Replace("\n", "<br>");

                    }
                }
            }                            
    }  
   
    protected void btCapnhat_Click(object sender, EventArgs e)
    
    {
        int Id = Convert.ToInt32(Request.QueryString["Id"]);
       
      try
     {

         string sql2 = "Update BAIHAT set URLBaiHat=N'" + txtSuaURLBH.Text.ToString() + "',TenBH=N'" + txtSuaTenBH.Text.ToString() + "',CaSi=N'" + txtSuaCaSi.Text.ToString() + "',MaTL=" + ddlSuaTL.SelectedItem.Value + ",TacGia=N'" + txtSuaTG.Text.ToString() + "',NgayCapNhat='" + Calendar1.SelectedDate.ToString() + "',LoiBaiHat=N'" + txtSuaLoiBH.Text.ToString() + "' where Id=" + Id;
       
            x.thuchienlenh(sql2);
            Response.Write("<script>alert('Sửa thành công!')</script>");
            lbBaoLoiSuaBH.Text = "Cập nhật thành công!";
            Response.Redirect("~/Admin/DSBaiHat.aspx");
            
     }
        catch
      {
            lbBaoLoiSuaBH.Text = "Cập nhật thất bại!";
      }
    }
    protected void btThoat_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/DSBaiHat.aspx");
    }
}