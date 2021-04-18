<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDSVideoHot.ascx.cs" Inherits="UC_ucTCVideo" %>
<style type="text/css">
    .tblvideohot {
        width: 100px;        
    }
    .tblvideohot tr td{
        height:100px;
    }
    .hlvideo{
        text-decoration:none;
        color:#0094ff;
    }
    .tdvideohot{
        text-decoration:none;
        color:black;
    }
    .tdvideohot:hover{
       color:hotpink;
    }
</style>
<p>
    <asp:Label ID="lbVideoHot" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="MediumVioletRed" Text="Video Hot"></asp:Label>
</p>
<asp:DataList ID="dlVideoHot" runat="server" RepeatColumns="3" CellPadding="5" CellSpacing="5" style="margin-right: 0px">
    <ItemTemplate>
        <br />
        <table class="tblvideohot">
            <tr>
                <td>
                    <asp:HyperLink ID="hplvideohot" CssClass="hlvideo" runat="server" NavigateUrl='<%# "~/Chitietvideo.aspx?MaVD="+ Eval("MaVD") %>' Text='<%# Eval("URLVideoN") %>'></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="hplTenVideo" CssClass="tdvideohot" runat="server" NavigateUrl='<%# "~/Chitietvideo.aspx?MaVD="+ Eval("MaVD") %>' Text='<%# Eval("TenVD") %>' Font-Bold="True"></asp:HyperLink>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
