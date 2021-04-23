<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucBaiHatTheoTL.ascx.cs" Inherits="UC_ucBaiHatTheoTL" %>
<style type="text/css">
    .hplTenbaihat{
        text-decoration:none;
        color:black;       
    }
    .hplTenbaihat:hover{
        color:hotpink;
    }
    .dlDSNhac{
       margin-left:10px;      
    }
    hr{
        width:670px;
    }
</style>
<h2 class="h2tenbaihat">---Bài Hát---</h2>
<asp:DataList ID="dlBaiHatTL" runat="server">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/notnhac.jpg" />
        <asp:HyperLink ID="hplTenBH" CssClass="hplTenbaihat" runat="server" Font-Bold="True" NavigateUrl='<%# "~/Chitietnhac.aspx?Id="+ Eval("Id") %>' Text='<%# Eval("TenBH") %>'></asp:HyperLink>
        -<asp:Label ID="lbTencs" runat="server" ForeColor="Gray" Text='<%# Eval("CaSi") %>'></asp:Label>
        <hr />
    </ItemTemplate>
</asp:DataList>

