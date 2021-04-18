using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;


public partial class Chitietnhac : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            XuatNhacchitiet();
            LuotXemBaiHat();

        }
                  
    }
    private void XuatNhacchitiet()
    {
        string id = Request.QueryString["Id"].ToString();
        string sql = "select * from BAIHAT where Id= '" + id + "'";

        //dlChiTietNhac.DataSource = x.GetDaTa(sql);
        //dlChiTietNhac.DataBind();

        DataTable tb = x.GetDaTa(sql);
        dlChiTietNhac.DataSource = tb;
        dlChiTietNhac.DataBind();
      



        string link = "<canvas id='canvas' width=500 height=150></canvas><br/><audio id=audio Controls><Source src=/api/Audio/"+ id +" type=audio/mpeg></video>";
        //(dlChiTietNhac.Items[0].FindControl("plPlay") as Literal).Text = link;
        foreach (DataListItem item in dlChiTietNhac.Items)
        {
            Literal myLiteral = (Literal)item.FindControl("plPlay");
            myLiteral.Text = link;
        }
    }
    private void LuotXemBaiHat()
    {
        string sql = "Update BAIHAT Set LuotXemBaiHat = LuotXemBaiHat+1 Where Id='" + Request.QueryString["Id"].ToString() + "'";
        x.thuchienlenh(sql);
    }
    
}