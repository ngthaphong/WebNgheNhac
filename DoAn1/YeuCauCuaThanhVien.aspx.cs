using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class YeuCauCuaThanhVien : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("~/Dangnhap.aspx");
            }
            else
            {
                string sql = "select * from THELOAI";
                DataTable dt = new DataTable();
                dt = x.GetDaTa(sql);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlTheloai.Items.Add(i.ToString());
                    ddlTheloai.Items[i].Text = dt.Rows[i]["TenTL"].ToString();
                    ddlTheloai.Items[i].Value = dt.Rows[i]["MaTL"].ToString();
                }
                
            }
            
        }
        
    }
    protected void btCapnhat_Click(object sender, EventArgs e)
    {
        try
        {
            string chon = ddlchon.SelectedValue.ToString();
            string sql = "insert into YEUCAU values('"+txtTenDN.Text+"',"+ ddlTheloai.SelectedItem.Value +",N'"+ chon +"',N'"+txtMota.Text+"')"; 
            x.thuchienlenh(sql);
            Response.Write("<script>alert('Chúng tôi sẽ duyệt yêu cầu của bạn.Xin chân thành cám ơn!')</script>");
            txtTenDN.Text = "";           
            txtMota.Text = "";                      
            lbBaoLoi.Text = "Yêu cầu của bạn đã được gửi!!";
        }
        catch
        {
            lbBaoLoi.Text = "Tên đăng nhập sai!!Xin vui lòng nhập lại!!";

        }

    }
}