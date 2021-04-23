<%@ Page Title="" Language="C#" MasterPageFile="~/Chitiet.master" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Admin_DangnhapAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .tbllogin{
            width:400px;
           text-align:center;
           background:#EE82EE;           
           margin:100px 100px;
           border-radius:5px; 
           box-shadow: 10px 10px 5px #888888;         
        }
        .captionlogin{
            width:400px;
            height:40px;           
            color:white;
            font-size:xx-large;
            background: -webkit-linear-gradient(#DC143C,hotpink);
            background: -o-linear-gradient(#DC143C,hotpink);
            background: -moz-linear-gradient(#DC143C,hotpink);
            background: linear-gradient(#DC143C,hotpink);
        }
        .btlogin{
             border: none;
           background: -webkit-linear-gradient(hotpink,#DC143C);
            background: -o-linear-gradient(hotpink,#DC143C);
            background: -moz-linear-gradient(hotpink,#DC143C);
            background: linear-gradient(hotpink,#DC143C);          
           width:400px; 
           height:40px;
           border-radius:3px;
           box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.2);
        }
        .btlogin:hover {
              transform: translateY(-3px);
              box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2);
        }
        .hpldoimk{
            text-decoration:none;
            color:white;
        }
        .hpldoimk:hover{
            color:black;
        }
        .imgtaikhoan
        {
            border-radius:5px;
        }
    </style>
     
    <table class="tbllogin">
        <tr><td class="captionlogin" colspan="2">Login Panel</td></tr> 
        <tr><td colspan="2"></td></tr>              
        <tr>
            <td colspan="2">
                <asp:Image ID="imgAccount" CssClass="imgtaikhoan" runat="server" ImageUrl="~/images/account.jpg" />
                <asp:TextBox ID="txtAccount"  runat="server" Height="25px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTen" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtAccount" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Image ID="imgPasswork" CssClass="imgtaikhoan" runat="server" ImageUrl="~/images/passwork.jpg" />
                <asp:TextBox ID="txtPasswork" runat="server" Height="25px" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" ErrorMessage="Không được bỏ trống" ControlToValidate="txtPasswork" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">

                <asp:HyperLink ID="hpldoimatkhau" CssClass="hpldoimk" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" NavigateUrl="~/DoiMatKhau.aspx">Đổi mật khẩu</asp:HyperLink>

            </td>
        </tr>
        <tr>         
            <td colspan="2">
                <asp:Button ID="btLogin" CssClass="btlogin" runat="server" Text="Login" OnClick="btLogin_Click" Font-Bold="True" Font-Size="X-Large" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="vsBaoloi" runat="server" ForeColor="#CC0000" />
                <asp:Label ID="lbBaoloi" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

