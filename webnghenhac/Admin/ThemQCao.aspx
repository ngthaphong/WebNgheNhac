<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="ThemQCao.aspx.cs" Inherits="Admin_ThemQCao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">    
       .tdthembh{
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
       .tblThembh{
           margin:auto;
       }
        </style>
    <table class="tblThembh">
        <br />
        <caption>THÊM QUẢNG CÁO</caption>
        <tr>
            <td class="tdthembh">Tên công ty:</td>
            <td>
                <asp:TextBox ID="txtThemTenCty" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTenCT" runat="server" ControlToValidate="txtThemTenCty" ErrorMessage="Tên Công ty không được bỏ trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdthembh">Hình minh họa:</td>
            <td>
                <asp:FileUpload ID="flHinhminhhoa" runat="server" />
                <asp:RequiredFieldValidator ID="rfvHinhminhhoa" runat="server" ErrorMessage="Chưa chọn hình" ControlToValidate="flHinhminhhoa" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdthembh">Href:</td>
            <td>
                <asp:TextBox ID="txtHref" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvHref" runat="server" ErrorMessage="Không được bỏ trống" Text="(*)" ControlToValidate="txtHref"  ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdthembh">Ngày bắt đầu:</td>
            <td>
                <asp:TextBox ID="txtNgaybatdau" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="cvNgaybatdau" runat="server" ControlToValidate="txtNgaybatdau" ErrorMessage="Ngày không hợp lệ" ForeColor="Red" Operator="DataTypeCheck" Type="Date">(*)</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="tdthembh">Ngày hết hạn:</td>
            <td>
                <asp:TextBox ID="txtNgayhethan" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="cvNgayhethan" runat="server" ControlToValidate="txtNgayhethan" ErrorMessage="Ngày không hợp lệ" ForeColor="Red" Operator="DataTypeCheck" Type="Date">(*)</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btThemQC" runat="server" Text="Thêm" Font-Bold="True" Width="100px" OnClick="btThemQC_Click" />

                <asp:Button ID="btthoat" runat="server" Font-Bold="True" OnClick="btthoat_Click" CausesValidation="false" Text="Thoát" Width="100px" />

            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="lbThongbaoloiQC" runat="server" ForeColor="Red"></asp:Label>
                <asp:ValidationSummary ID="vsBaoloiQC" runat="server" ForeColor="Red" />
            </td>
        </tr>
    </table>

</asp:Content>

