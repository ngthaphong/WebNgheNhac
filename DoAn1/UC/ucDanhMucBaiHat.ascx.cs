using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucDanhMucBaiHat : System.Web.UI.UserControl
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            NhacMP3();
    }
    private void NhacMP3()
    {
        String sql = "select top 22 * from BAIHAT order by NgayCapNhat desc ";
        dlNhacMp3.DataSource = x.GetDaTa(sql);
        dlNhacMp3.DataBind();
    }
}