<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDSBaiHatMoi.ascx.cs" Inherits="UC_ucDSBaiHatMoi" %>
<style type="text/css">
    .tbldsbaihatmoi {
        width: 350px;
    }
    .dlDSbaihatmoi{
        width: 350px;
    }
    .tendsbh{
        text-align:center;
        color:black;
        text-decoration:none;
    }
    .tendstg{
        text-align:center;
        color:#778899;
        text-decoration:none;
    }
    .tendsbh:hover
    {
       color:hotpink;
    }
    h2{
        color:#d407d0;
    }
    .hrbhm{
        width:340px;
    }
    .sotutang{
        width:20px;
    }
</style>

<h2>
    <asp:Image ID="imgnotnhacbnm" runat="server" ImageUrl="~/images/notnhac.jpg" />
   BXH BÀI HÁT </h2>
<asp:DataList ID="dlDSbaihatmoi" runat="server">
    <ItemTemplate>
       
        <table>
            <tr>
                <td rowspan="2" class="sotutang">
                      <%#Container.ItemIndex+1 %>
                </td>
                <td>
                    <asp:HyperLink ID="hplTennhac" CssClass="tendsbh" runat="server" NavigateUrl='<%# "~/Chitietnhac.aspx?Id="+Eval("Id") %>' Text='<%# Eval("TenBH") %>'></asp:HyperLink>
                              
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="lbTencasi" CssClass="tendstg" runat="server" Text='<%# Eval("CaSi") %>'></asp:Label> 
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Music-Headphones-icon.png" />
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("LuotXemBaiHat") %>' ForeColor="#666666"></asp:Label>
                </td>
            </tr>
            <caption>
                <hr class="hrbhm"/>
            </caption>
        </table>             
    </ItemTemplate>
</asp:DataList>
