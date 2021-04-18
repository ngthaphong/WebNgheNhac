<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="SuaQC.aspx.cs" Inherits="Admin_SuaQC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">    
       .tdSuaqc{
           text-align:right;
           font-weight:bold;
           margin-top:1px;
           color:#e91406;
       }
       caption{
           font-weight:bold;
           color:#e91406;
           font-size:large;
       }
       .tblSuaqc{
           margin:auto;;
       }
        </style>
    <table class="tblSuaqc">
        <br />
        <caption>SỬA QUẢNG CÁO</caption>
        <tr>
            <td class="tdSuaqc">Tên công ty:</td>
            <td>
                <asp:TextBox ID="txtSuaTenCty" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="tdSuaqc">Hình minh họa:</td>
            <td>
                <asp:FileUpload ID="flHinhminhhoa" runat="server" />
                
            </td>
        </tr>
        <tr>
            <td class="tdSuaqc">Href:</td>
            <td>
                <asp:TextBox ID="txtHref" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="tdSuaqc">Ngày bắt đầu:</td>
            <td>
                <asp:TextBox ID="txtNgaybatdau" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="tdSuaqc">Ngày hết hạn:</td>
            <td>
                <asp:TextBox ID="txtNgayhethan" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btCapnhatQC" runat="server" Text="Cập nhật" Font-Bold="True" Width="100px" OnClick="btCapnhatQC_Click"  />

                <asp:Button ID="btThoat" runat="server" Font-Bold="True" Text="Thoát" CausesValidation="false" Width="100px" />

            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbThongbaoloiQC" runat="server" ForeColor="Red"></asp:Label>
               
            </td>
        </tr>
    </table>
</asp:Content>

