using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_QuangCao : System.Web.UI.Page
{
   XLDL x = new XLDL();
   protected void Page_Load(object sender, EventArgs e)
   {
       if (Session["UserAdmin"] == null)
      {
          Response.Redirect("~/Dangnhap.aspx");
      }
       else
      {         
          try
          {
              DataTable dt = x.Docbang("Select *from QUANGCAO");
              gvDSQCao.DataSource = dt;
              gvDSQCao.DataBind();

          }
          catch
          {
              lbBaoLoiDSQC.Text = "Thất bại!";
          }
      }
       
   }
    protected void gvDSQCao_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Nutxoa")
        {
            try
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                int ma = int.Parse(gvDSQCao.Rows[chiso].Cells[0].Text);
                string str = "Delete from QUANGCAO where STT=" + ma;
                x.thuchienlenh(str);
                Response.Redirect("~/Admin/DSQuangCao.aspx");
            }
            catch
            {
                lbBaoLoiDSQC.Text = "Thất bại!";
            }
        }
    }
}