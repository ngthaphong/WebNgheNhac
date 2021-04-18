using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_DSYeuCau : System.Web.UI.Page
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
            else
            {
                dsYeuCau();
            }

        }        
    }
    private void dsYeuCau()
    {
        try
        {
            DataTable dt = x.Docbang("Select *from YEUCAU");
            gvDSYeuCau.DataSource = dt;
            gvDSYeuCau.DataBind();

        }
        catch
        {
            lbBaoLoi.Text = "Thất bại!";
        }
    }
    protected void gvDSYeuCau_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Nutxoa")
        {
            try
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                string ma = gvDSYeuCau.Rows[chiso].Cells[0].Text;
                string str = "Delete from YEUCAU where STTYC="+ ma +"";
                x.thuchienlenh(str);
                Response.Redirect("~/Admin/DSYeuCau.aspx");
            }
            catch
            {
                lbBaoLoi.Text = "Thất bại!";
            }
        }
    }
}