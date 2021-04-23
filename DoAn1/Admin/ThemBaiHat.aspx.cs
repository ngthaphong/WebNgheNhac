using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Admin_ThemBaiHat : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["UserAdmin"] == null)
            {
                Response.Redirect("~/Dangnhap.aspx");
            }
            else
            {
                string sql = "select *from THELOAI";
                DataTable dt = new DataTable();
                dt = x.GetDaTa(sql);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlThemTL.Items.Add(i.ToString());
                    ddlThemTL.Items[i].Text = dt.Rows[i]["TenTL"].ToString();
                    ddlThemTL.Items[i].Value = dt.Rows[i]["MaTL"].ToString();
                }
                Calendar1.SelectedDate = DateTime.Today;
            }
           // CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
            //_FileBrowser.BasePath = "CK/ckfinder";
           // _FileBrowser.SetupCKEditor(txtLoiBaiHat);
        }
        
    }

    protected void btThem_Click(object sender, EventArgs e)
    {
        try
        {
            string sql = "insert into BAIHAT values('" + txtThemURLBH.Text + "',N'" + txtThemTenBH.Text + "',N'" + txtThemCaSi.Text + "'," + ddlThemTL.SelectedItem.Value + ",N'" + txtThemTG.Text + "','" + Calendar1.SelectedDate.ToString() + "',N'" + txtLoiBaiHat.Text + "',0)";
            x.thuchienlenh(sql);
            Response.Write("<script>alert('Thêm thành công!')</script>");
            txtThemTenBH.Text = "";
            txtThemURLBH.Text = "";
            txtLoiBaiHat.Text = "";
            txtThemCaSi.Text = "";
            txtThemTG.Text = "";
            lbBaoLoiThemBH.Text = "Thêm bài hát thành công!!";
        }
        catch
        {
            lbBaoLoiThemBH.Text = "Thêm bài hát thất bại";

        }

    }

    protected void btthoat_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/DSBaiHat.aspx");
        
    }
}