using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_DSThanhvien : System.Web.UI.Page
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
                dsThanhVien();  
            }
                 
        }        
    }
    private void dsThanhVien()
    {

        try
        {
            DataTable dt = x.Docbang("Select *from THANHVIEN where QuyenAdmin=1");
            gvDSQLTVien.DataSource = dt;
            gvDSQLTVien.DataBind();

        }
        catch
        {
            lbBaoLoiDSQTV.Text = "Thất bại!";
        }
    }         
    protected void gvDSQLTVien_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvDSQLTVien.EditIndex = -1;
        dsThanhVien();
   
    }
    protected void gvDSQLTVien_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvDSQLTVien.EditIndex = e.NewEditIndex;
        dsThanhVien();

       
        
    }
    protected void gvDSQLTVien_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            string tendn = gvDSQLTVien.DataKeys[e.RowIndex].Value.ToString();
            string phquyen = (gvDSQLTVien.Rows[e.RowIndex].Cells[12].Controls[0] as TextBox).Text;
            string sql = "update THANHVIEN set QuyenAdmin ='"+ phquyen +"' where TenDN ='"+tendn+"'";
            x.thuchienlenh(sql);
            gvDSQLTVien.EditIndex = -1;
            lbBaoLoiDSQTV.Text = "Cập nhật thành công!";
        }
        catch
        {
            lbBaoLoiDSQTV.Text = "Thất bại!";
        }
    }

    protected void gvDSQLTVien_RowCommand(object sender, GridViewCommandEventArgs e)
    {
      
        if (e.CommandName == "Nutxoa")
        {
            try
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                string ma = gvDSQLTVien.Rows[chiso].Cells[1].Text;
                string str = "Delete from THANHVIEN where TenDN='"+ma+"'";
                x.thuchienlenh(str);
                Response.Redirect("~/Admin/DSThanhvien.aspx");
            }
            catch
            {
                lbBaoLoiDSQTV.Text = "Thất bại!";
            }
        }
    
    }
}
