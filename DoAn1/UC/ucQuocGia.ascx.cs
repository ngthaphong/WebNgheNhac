using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucQuocGia : System.Web.UI.UserControl
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            NhacTheoTheLoai();
    }
    private void NhacTheoTheLoai()
    {
        string sql = "select * from THELOAI";
        dlTheloai.DataSource = x.GetDaTa(sql);
        dlTheloai.DataBind();
    }
}