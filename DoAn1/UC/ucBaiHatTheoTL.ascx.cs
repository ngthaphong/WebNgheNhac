using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucBaiHatTheoTL : System.Web.UI.UserControl
{
    XLDL x = new XLDL();   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
            XuatChiTietNhac();
    }
    private void XuatChiTietNhac()
    {
        string sql = "select * from BAIHAT where MaTL= '" + Request.QueryString["MaTL"].ToString() + "'";
        dlBaiHatTL.DataSource = x.GetDaTa(sql);
        dlBaiHatTL.DataBind();
    }
    
}