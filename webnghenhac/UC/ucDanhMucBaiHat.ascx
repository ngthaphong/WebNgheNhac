<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDanhMucBaiHat.ascx.cs" Inherits="UC_ucDanhMucBaiHat" %>
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
<p>
    <asp:Label ID="lbBaiHat" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="MediumVioletRed" Text="Bài Hát Mới"></asp:Label>
</p>
<asp:DataList ID="dlNhacMp3" CssClass="dlDSNhac" runat="server">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/notnhac.jpg" />
        <asp:HyperLink ID="hplTenBaiHat" CssClass="hplTenbaihat" runat="server" NavigateUrl='<%#"~/Chitietnhac.aspx?Id="+Eval("Id")%>' Text='<%# Eval("TenBH") %>' Font-Bold="True" Font-Size="Medium"></asp:HyperLink>-       
        <asp:Label ID="lbCaSi" runat="server" Text='<%# Eval("CaSi") %>' ForeColor="Gray"></asp:Label>
        <hr />
    </ItemTemplate>
</asp:DataList>

