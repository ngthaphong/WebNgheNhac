using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_ThemVideo : System.Web.UI.Page
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
        }
        
    }
    protected void btThem_Click(object sender, EventArgs e)
    {
        try
        {
            string sql = "insert into VIDEO values('" + txtThemURLVDL.Text + "','" + txtThemURLVDN.Text + "',N'" + txtThemTenVD.Text + "'," + ddlThemTL.SelectedItem.Value + ",N'" + txtThemTG.Text + "',N'" + txtThemCaSi.Text + "','" + Calendar1.SelectedDate.ToString() + "',0)";
            x.thuchienlenh(sql);
            Response.Write("<script>alert('Thêm thành công!')</script>");
            txtThemTenVD.Text = "";
            txtThemURLVDL.Text = "";
            txtThemURLVDN.Text = "";
            txtThemCaSi.Text = "";
            txtThemTG.Text = "";
            lbBaoLoiThemVD.Text = "Thêm video thành công!!";
        }
        catch 
        {
            lbBaoLoiThemVD.Text = "Thêm video thất bại!!";

        }
    }
    protected void btThoat_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/DSVideo.aspx");
    }
}