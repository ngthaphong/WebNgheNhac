using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_BaiHat : System.Web.UI.Page
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

                XuatDSBaiHat();
            }
        }
       
           
    }
    private void XuatDSBaiHat()
    {
        try
            {
                string sql = "select * From BAIHAT";
                gvDSBHat.DataSource = x.GetDaTa(sql).DefaultView;
                gvDSBHat.DataBind();
                /*DataTable dt = x.Docbang("Select *from BAIHAT");
                gvDSBHat.DataSource = dt;
                gvDSBHat.DataBind();*/

            }
            catch
            {
                lbBaoLoiBaiHat.Text = "Thất bại!";
            }
    }
    protected void gvDSBaiHat_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Nutxoa")
        {
            try
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                int ma = int.Parse(gvDSBHat.Rows[chiso].Cells[0].Text);
                string str = "Delete from BAIHAT where Id=" + ma;
                x.thuchienlenh(str);
                Response.Redirect("~/Admin/DSBaiHat.aspx");
            }
            catch
            {
                lbBaoLoiBaiHat.Text = "Thất bại!";
            }
        }
    }




    protected void gvDSBHat_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        
        gvDSBHat.PageIndex = e.NewPageIndex;       
        XuatDSBaiHat();
    }
}