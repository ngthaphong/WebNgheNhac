<%@ Page Title="" Language="C#" MasterPageFile="~/Chitiet.master" AutoEventWireup="true" CodeFile="DoiMatKhau.aspx.cs" Inherits="DoiMatKhau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .doimk{
            margin-top:100px;
            margin-left:150px;
            background: -webkit-linear-gradient(hotpink,#FFB6C1);
            background: -o-linear-gradient(hotpink,#FFB6C1);
            background: -moz-linear-gradient(hotpink,#FFB6C1);
            background: linear-gradient(hotpink,#FFB6C1);
             border-radius:5px;
             box-shadow: 10px 10px 5px #888888; 
        }
        .h1doimk{
            text-align:center;
            font-size:larger;
            color:white;
            font-size:xx-large;
            background: -webkit-linear-gradient(#DC143C,hotpink);
            background: -o-linear-gradient(#DC143C,hotpink);
            background: -moz-linear-gradient(#DC143C,hotpink);
            background: linear-gradient(#DC143C,hotpink);
        }
       
    </style>
    <table class="doimk">
        <tr>
            <td colspan="2" class="h1doimk">ĐỔI MẬT KHẨU</td>
        </tr>        
        <tr>
            <td>Tên đăng nhập:</td>
            <td>
                <asp:TextBox ID="txtTenDN" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ErrorMessage="Tên đăng nhập không được bỏ trống " ControlToValidate="txtTenDN" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mật khẩu:</td>
            <td>
                <asp:TextBox ID="txtMatkhau" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMK" runat="server" ErrorMessage="Mật khẩu không được bỏ trống " ControlToValidate="txtMatkhau" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>-------------------------</td>
        </tr>
        <tr>
            <td>Mật khẩu mới:</td>
            <td>
                <asp:TextBox ID="txtMatkhaumoi" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMKmoi" runat="server" ErrorMessage="Nhập mật khẩu mới" ControlToValidate="txtMatkhaumoi" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Nhập lại mật khẩu:</td>
            <td>
                <asp:TextBox ID="txtNhapLaiMK" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                <asp:CompareValidator ID="cvMatKhauNhapLai" runat="server" ErrorMessage="Mật khẩu nhập lại không trùng với Mật Khẩu mới" ControlToCompare="txtMatkhaumoi" ControlToValidate="txtNhapLaiMK" ForeColor="Red">(*)</asp:CompareValidator>
                 <asp:RequiredFieldValidator ID="rfvNhaplaiMK" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtNhapLaiMK">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btDongy" runat="server" Text="Đồng ý" OnClick="btDongy_Click" Width="80px" /></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="vsBaoloi" runat="server" ForeColor="Red" />
            </td>
            
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbBaoloi" runat="server" ForeColor="Red"></asp:Label>

            </td>
            
        </tr>
    </table>

</asp:Content>

