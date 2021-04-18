using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucQuangCao : System.Web.UI.UserControl
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            QuangCao();
    }
    private void QuangCao()
    {
        string sql = "select top 3 * from QUANGCAO order by NgayBatDau desc ";
        gvQC.DataSource = x.GetDaTa(sql);
        gvQC.DataBind();
    }
}