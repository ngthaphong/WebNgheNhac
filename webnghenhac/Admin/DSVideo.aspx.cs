using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_DSVideo : System.Web.UI.Page
{
         XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {      if(!IsPostBack)
            {
                if (Session["UserAdmin"] == null)
                {
                    Response.Redirect("~/Dangnhap.aspx");
                }
                else
                {
                    XuatDSVideo();
                }
            }
       

    }
    private void  XuatDSVideo()
    {
        try
        {
            string sql = "select * From VIDEO";
            gvDSVideo.DataSource = x.GetDaTa(sql).DefaultView;
            gvDSVideo.DataBind();
            

        }
        catch
        {
            lbBaoLoiDSVideo.Text = "Thất bại!";
        }
    }
    protected void gvDSVideo_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Nutxoa")
        {
            try
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                int ma = int.Parse(gvDSVideo.Rows[chiso].Cells[0].Text);
                string str = "Delete from VIDEO where MaVD=" + ma;
                x.thuchienlenh(str);
                Response.Redirect("~/Admin/DSVideo.aspx");
            }
            catch
            {
                lbBaoLoiDSVideo.Text = "Thất bại!";
            }
        }
    }
    protected void gvDSVideo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDSVideo.PageIndex = e.NewPageIndex;
        XuatDSVideo();
    }    
}