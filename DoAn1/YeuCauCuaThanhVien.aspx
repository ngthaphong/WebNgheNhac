<%@ Page Title="" Language="C#" MasterPageFile="~/Chitiet.master" AutoEventWireup="true" CodeFile="YeuCauCuaThanhVien.aspx.cs" Inherits="YeuCauCuaThanhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style type="text/css">
      .tblyeucau{
           margin-top:50px;
            margin-left:100px;
            background: -webkit-linear-gradient(hotpink,#FFB6C1);
            background: -o-linear-gradient(hotpink,#FFB6C1);
            background: -moz-linear-gradient(hotpink,#FFB6C1);
            background: linear-gradient(hotpink,#FFB6C1);
             border-radius:5px;
             box-shadow: 10px 10px 5px #888888; 
      }
      .captionlabel{
           width:500px;
            height:40px;           
            color:white;
            font-size:xx-large;
            background: -webkit-linear-gradient(#DC143C,hotpink);
            background: -o-linear-gradient(#DC143C,hotpink);
            background: -moz-linear-gradient(#DC143C,hotpink);
            background: linear-gradient(#DC143C,hotpink);
            border-radius:5px;
            
      }
    </style>
    <table class="tblyeucau">
        <caption class="captionlabel">Yêu Cầu Của Bạn</caption>
        <tr>
            <td>
                Tên đăng nhập:
            </td>
            <td>
                <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>           
            <td>Thể Loại:</td>
            <td>
                <asp:DropDownList ID="ddlTheloai" runat="server">
                    
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Chọn:</td>
            <td><asp:DropDownList ID="ddlchon" runat="server">
                <asp:ListItem>Bài hát</asp:ListItem>
                    <asp:ListItem>Video</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Tên bài hát hoặc tên video:</td>
            <td> 
                <asp:TextBox ID="txtMota" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvMota" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtMota" Display="Dynamic">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btCapnhat" runat="server" Text="Cập nhật" Width="80px" OnClick="btCapnhat_Click" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

