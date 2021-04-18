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
using System.Reflection;

public interface IDataFileReader
{
    IEnumerable<DataFileRow> ReadAllRows(DataRow dt);
}

public class DataFileReader : IDataFileReader
{
    public IEnumerable<DataFileRow> ReadAllRows(DataRow dt)
    {
        string loi = "";
        object value = dt;
        if (value == DBNull.Value)
            yield return new DataFileRow();
        else
        {
            loi = dt[0].ToString();
        }
        string[] lines = loi.Split('\n');
        for (int i = 0; i < lines.Length; i++)
        {
            yield return new DataFileRow
            {
                LineNumber = i + 1,
                LineText = lines[i]
            };
        }
    }
}