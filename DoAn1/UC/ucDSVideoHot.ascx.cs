using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucTCVideo : System.Web.UI.UserControl
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            VideoCaNhac();
    }
    private void VideoCaNhac()
    {
        string sql = "select top 6 * from VIDEO order by NgayCapNhat desc";
        dlVideoHot.DataSource = x.GetDaTa(sql);
        dlVideoHot.DataBind();
    }
}