<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucheader.ascx.cs" Inherits="UC_ucheader" %>
<style type="text/css">
    .dautrang {
        width:74%;
        float:right;
        margin-top: 30px;
    }
    header{
        background-image:url(../images/Nen_header.gif);
        height:80px;
        width: 100%;               
    }
   
    .auto-style1 {
        width: 361px;
    }
   .lienhe{
       text-decoration:none;
       border:none;
   }
   .lbtSearch{
       color: black;
       font:bold;
       font-size:x-large;
       text-decoration:none;
   }
</style>
<header>
   
    <table class="dautrang">
        <tr>
            <td class="auto-style1" >
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.jpg" />               
                
                
                <asp:TextBox ID="txtSearch" runat="server" Width="250px" TextMode="Search"></asp:TextBox>
                
                
            </td>
            <td>
                <asp:LinkButton ID="lbtSearch" CssClass="lbtSearch" runat="server" OnClick="lbtSearch_Click" CausesValidation="false">Search</asp:LinkButton>
            </td>
            <td>
                <asp:HyperLink ID="hplFacebook" CssClass="lienhe" runat="server" ForeColor="#FF0066" NavigateUrl="https://www.facebook.com/ngthaphong/" Target="_blank" ImageUrl="~/images/facebook.jpg"></asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="hplTwitter"  CssClass="lienhe" runat="server" ForeColor="#FF0066" NavigateUrl="https://twitter.com/HoangHa25596" Target="_blank" ImageUrl="~/images/titwer.jpg"></asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="hplYoutube" CssClass="lienhe" runat="server" ForeColor="#FF0066" NavigateUrl="https://www.youtube.com/channel/UCp7L2wFYsUx7fOXjFbkUMsQ" Target="_blank" ImageUrl="~/images/youtube.jpg"></asp:HyperLink>
            </td>           
        </tr>
    </table>
   
</header>