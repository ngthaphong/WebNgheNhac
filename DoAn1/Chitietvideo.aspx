<%@ Page Title="" Language="C#" MasterPageFile="~/Chitiet.master" AutoEventWireup="true" CodeFile="Chitietvideo.aspx.cs" Inherits="Chitietvideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .tblChitietvideo{
            width:100%;
        }
     
    </style>
    <script src="Script/comment.js"></script>
    <script src="Script/Like_share.js"></script>
    <asp:DataList ID="dlChitietvideo" runat="server">
        <ItemTemplate>
            <table class="tblChitietvideo">
                <tr>
                    <td colspan="2"> 
                        <asp:HyperLink ID="hplURLvideoL"  runat="server" Text='<%# Eval("URLVideoL") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr><td colspan="2">
                    <asp:Label ID="lbTenVideo" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("TenVD") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">

                        <asp:Label ID="lbSangtac" runat="server" Text="Sáng tác:"></asp:Label>
                        <asp:Label ID="lbTacgia" runat="server" Text='<%# Eval("TacGia") %>'></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td >

                        <asp:Label ID="lbCasi" runat="server" Text="Ca sĩ:"></asp:Label>
                        <asp:Label ID="lbTenCasi" runat="server" Text='<%# Eval("CaSi") %>'></asp:Label>

                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/tai_nghe.PNG" />
                        <asp:Label ID="lblxvd" runat="server" Text='<%# Eval("LuotXemVideo") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><!-- plugin nút like, share facebook-->                                             
                        <div class="fb-like" 
                            data-layout="standard" 
                            data-action="like" 
                            data-size="small" 
                            data-show-faces="true" 
                            data-share="true"></div>
                    </td>
                </tr>
                <tr>
                    <td> 
                    </td>
                </tr>
            </table>          
        </ItemTemplate>
    </asp:DataList>
    <!--plugin comment facebook-->      
    <div id="fb-root"></div>  
     <div class="fb-comments" data-href='<%#"~/Chitietvideo.aspx?MaVD="+Eval("MaVD")%>' data-width="680px" data-numposts="5"></div>
</asp:Content>

