using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class SearchBH : System.Web.UI.Page
{
    XLDL x = new XLDL();
    private ILuceneService ls;
    private IDataFileReader readfile;
    private IEnumerable<DataFileRow> DataFileRows;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Search();
            SearchVD();
            SearchLoi();
        }
            
    }
    private void Search()
    {
        string sql = "select * from BAIHAT where TenBH COLLATE SQL_Latin1_General_Cp1_CI_AI like N'%" + Request.QueryString["TenBH"].ToString() + "%' COLLATE SQL_Latin1_General_Cp1_CI_AI";
        DataTable all = x.GetDaTa(sql);
        DataColumn col = new DataColumn();
        col.DataType = Type.GetType("System.String");
        col.ColumnName = "TimKiem";
        all.Columns.Add(col);
        //contruct null for timkiem
        for (int i = 0; i < all.Rows.Count; i++)
        {
            all.Rows[i]["TimKiem"] = "";
        }
        dlSearch.DataSource = all;
        dlSearch.DataBind();
    }

    private void SearchVD()
    {
        string sql = "select * from VIDEO where TenVD COLLATE SQL_Latin1_General_Cp1_CI_AI like N'%" + Request.QueryString["TenBH"].ToString() + "%' COLLATE SQL_Latin1_General_Cp1_CI_AI";
        dlVideoHot.DataSource = x.GetDaTa(sql);
        dlVideoHot.DataBind();
    }

    public void SearchLoi()
    {
        //sql
        string key = Request.QueryString["TenBH"].ToString();
        string sql = "";
        if(char.IsUpper(key, 0))
        {
            sql = "select * from BAIHAT where LoiBaiHat like N'%" + key + " %'";
        }
        else
        {
            sql = "select * from BAIHAT where LoiBaiHat like N'% " + key + " %'";
        }
        
        DataTable all = x.GetDaTa(sql);
        DataColumn col = new DataColumn();
        col.DataType = Type.GetType("System.String");
        col.ColumnName = "TimKiem";
        all.Columns.Add(col);

        DataTable lbh = new DataView(all).ToTable(false, "LoiBaiHat");

        for (int i = 0; i < all.Rows.Count; i++)
        {
            ls = new LuceneService();
            readfile = new DataFileReader();
            DataRow rlbh = lbh.Rows[i];
            DataFileRows = readfile.ReadAllRows(rlbh);
            ls.BuildIndex(DataFileRows);
            //lucene search
            var results = ls.Search(Request.QueryString["TenBH"].ToString().ToLower());
            ls.CloseWriter();
            var result = results.FirstOrDefault();
            //create tim kiem
            if (result == null)
            {
                all.Rows[i]["TimKiem"] = "Không tìm thấy lời bài hát yêu cầu!";
            }
            else
            {
                all.Rows[i]["TimKiem"] = result.LineText;
            }
        }
        
        dlSearch.DataSource = all;
        dlSearch.DataBind();
    }
}