<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchBH.aspx.cs" Inherits="SearchBH" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
    .hplTenbaihat{
        text-decoration:none;
        color:black;       
    }
    .hplTenbaihat:hover{
        color:hotpink;
    }
    .dlSearch{
       margin-left:20px; 
       margin-top: 30px;     
    }
   .h3bh
   {
       color:hotpink;
   }
    .tblvideohot {
        width: 100%;        
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
    <h3 class="h3bh">--Bài hát--</h3>
    <asp:DataList ID="dlSearch" CssClass="dlSearch" runat="server">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/notnhac.jpg" />
            <asp:HyperLink ID="hplSearchTenBH" CssClass="hplTenbaihat" runat="server" Font-Bold="True" NavigateUrl='<%# "~/Chitietnhac.aspx?Id=" + Eval("Id") %>' Text='<%# Eval("TenBH") %>' Font-Size="Large"></asp:HyperLink>-
            <asp:Label ID="lbTenCS" runat="server" ForeColor="Gray" Text='<%# Eval("CaSi") %>' Font-Size="Large"></asp:Label><br />
            <asp:Label ID="lbTimKiemLBH" CssClass="lblbh" runat="server" Text='<%# Eval("TimKiem") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
  <h3 class="h3bh">--Video--</h3>
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
  
    </asp:Content>

