using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chitietvideo : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            XuatVideochitiet();
            LuotXemVideo();
        }
            
    }
    private void XuatVideochitiet()
    {
        string sql = "select * from VIDEO where MAVD= '" + Request.QueryString["MAVD"].ToString() + "'";
        dlChitietvideo.DataSource = x.GetDaTa(sql);
        dlChitietvideo.DataBind();
    }
    private void LuotXemVideo()
    {
        string sql = "Update VIDEO Set LuotXemVideo = LuotXemVideo+1 Where MAVD='" + Request.QueryString["MAVD"].ToString() + "'";
        x.thuchienlenh(sql);
    }
}