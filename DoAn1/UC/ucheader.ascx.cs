using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucheader : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lbtSearch_Click(object sender, EventArgs e)
    {
        string str = txtSearch.Text;
        Response.Redirect("~/SearchBH.aspx?TenBH=" + str);
    }
}