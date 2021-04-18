using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DataFileRow
{
    public int LineNumber { get; set; }
    public string LineText { get; set; }
    public float Score { get; set; }

    public DataFileRow()
    {
        this.LineNumber = 0;
        this.LineText = "";
        this.Score = 0;
    }
}