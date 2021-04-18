<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucQuocGia.ascx.cs" Inherits="UC_ucQuocGia" %>
<style type="text/css">
    .chutheloai{
        color:black;
        text-decoration:none;
    position:fixed;
    font-size:x-large;
  font-
       
    }
    .chutheloai:hover{
        background-color:pink;
    }
    .bangtheloai{
        height:300px;
        
        
        
    }    
    
</style>


<asp:DataList ID="dlTheloai" CssClass="bangtheloai" runat="server">
    <ItemTemplate>       
                
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="chutheloai" NavigateUrl='<%# "~/NhacTheoTheLoai.aspx?MaTL="+ Eval("MaTL") %>' Text='<%# Eval("TenTL") %>'></asp:HyperLink>
                               
    </ItemTemplate>
</asp:DataList>

