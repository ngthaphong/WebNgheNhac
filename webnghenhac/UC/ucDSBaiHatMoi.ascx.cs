using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucDSBaiHatMoi : System.Web.UI.UserControl
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Nhacmoi();
    }
    private void Nhacmoi()
    {
        String sql = "select top 10 * from BAIHAT  order by LuotXemBaiHat desc";
        dlDSbaihatmoi.DataSource = x.GetDaTa(sql);
        dlDSbaihatmoi.DataBind();
    }
}