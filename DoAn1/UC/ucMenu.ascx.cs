using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class UC_ucMenu : System.Web.UI.UserControl
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["Username"] == null)
            {
                hplDangnhapadmin.Visible = true;
                hplDangky.Visible = true;
                hplDangxuatadmin.Visible = false;
                lbAdmin.Visible = false;
            }
            else
            {
                hplDangxuatadmin.Visible = true;
                hplDangnhapadmin.Visible = false;
                lbAdmin.Text = "Hello!" + Session["Username"] as string;
            }


        }
       
        XuatTheLoai();
    }
    
    private void XuatTheLoai()
    {
        string sql = "select * from THELOAI";
        Dltheloai.DataSource = x.GetDaTa(sql);
        Dltheloai.DataBind();
    }
}