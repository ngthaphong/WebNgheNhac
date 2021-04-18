using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class DSQuanTriVien : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
       if(!IsPostBack)
       {
           if (Session["UserAdmin"] == null)
           {
               Response.Redirect("~/Dangnhap.aspx");
           }
           else
           {
              if( Session["UserName"].ToString() == "admin")
              {
                  dsQuanTrivien();
              }
              else
              {
                  lbBaoLoiDSQTV.Text = "Bạn không thể xem trang này! ";
              }
           }
          
       }
            
    }

    private void dsQuanTrivien()
    {
        try
        {
            DataTable dt = x.Docbang("Select *from THANHVIEN where QuyenAdmin=0");
            gvDSQTVien.DataSource = dt;
            gvDSQTVien.DataBind();

        }
        catch
        {
            lbBaoLoiDSQTV.Text = "Thất bại!";
        }    
    }

    protected void gvDSQTVien_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Nutxoa")
        {
            try
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                string ma = gvDSQTVien.Rows[chiso].Cells[1].Text;
                if(ma=="admin")
                {
                    lbBaoLoiDSQTV.Text = "Không được xóa chủ trang web này!";
                }
                else
                {
                string str = "Delete from THANHVIEN where TenDN='" + ma +"'";
                x.thuchienlenh(str);
                Response.Redirect("~/Admin/DSQuanTriVien.aspx");
                }                
            }
            catch
            {
                lbBaoLoiDSQTV.Text = "Thất bại!";
            }
        }
    }
    protected void gvDSQTVien_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvDSQTVien.EditIndex = -1;
        dsQuanTrivien();
   
    }
    protected void gvDSQTVien_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvDSQTVien.EditIndex = e.NewEditIndex;
        dsQuanTrivien();

    }
    protected void gvDSQTVien_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            string tendn = gvDSQTVien.DataKeys[e.RowIndex].Value.ToString();
            string phquyen = (gvDSQTVien.Rows[e.RowIndex].Cells[12].Controls[0] as TextBox).Text;
            string sql = "update THANHVIEN set QuyenAdmin ='" + phquyen + "' where TenDN ='" + tendn + "'";
            x.thuchienlenh(sql);
            gvDSQTVien.EditIndex = -1;
            lbBaoLoiDSQTV.Text = "Cập nhật thành công!";
        }
        catch
        {
            lbBaoLoiDSQTV.Text = "Thất bại!";
        }
    }
}