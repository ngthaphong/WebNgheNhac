<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucVideoTheoTL.ascx.cs" Inherits="UC_ucVideoTheoTL" %>

 <style type="text/css">
      .h2tenbaihat{
        color:mediumvioletred;
    }
    .tblvideo {
        width: 100px;        
    }
    .tblvideo tr td{
        height:100px;
    }
    .hlTenvideo{
        text-decoration:none;
        color:black;
    }
    .hlTenvideo:hover{
       color:hotpink;
    }
    
</style>

<h2 class="h2tenbaihat">---Video---</h2>
<asp:DataList ID="dlVideoTL" runat="server" RepeatColumns="3" CellPadding="5" CellSpacing="5">
    <ItemTemplate>
        <table class="tblvideo">
            <tr>
                <td>
                    <asp:HyperLink ID="hplvideohot" runat="server" NavigateUrl='<%# "~/Chitietvideo.aspx?MaVD="+ Eval("MaVD") %>' Text='<%# Eval("URLVideoN") %>'></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="hplTenVideo" CssClass="hlTenvideo" runat="server" NavigateUrl='<%# "~/Chitietvideo.aspx?MaVD="+ Eval("MaVD") %>' Text='<%# Eval("TenVD") %>' Font-Bold="True"></asp:HyperLink>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>


