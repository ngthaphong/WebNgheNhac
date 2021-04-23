<%@ Page Title="" Language="C#" MasterPageFile="~/Chitiet.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .dangky{
            margin-top:50px;
            margin-left:100px;
            background: -webkit-linear-gradient(hotpink,#FFB6C1);
            background: -o-linear-gradient(hotpink,#FFB6C1);
            background: -moz-linear-gradient(hotpink,#FFB6C1);
            background: linear-gradient(hotpink,#FFB6C1);
             border-radius:5px;
             box-shadow: 10px 10px 5px #888888; 
        }
       
    </style>
       <table class="dangky">
        <tr>
            <td colspan="2" style="color: #FF0000; height: 21px;">
                <asp:Literal ID="lblthongbao"  runat="server" 
        Text="Chúc Mừng Bạn Đã Đăng Ký Thành Công" Visible="False"></asp:Literal></td>
        </tr>
            <tr>
           <td style="color: #000000; text-align: right;">Họ và Tên</td>
            <td style="text-align: left">
                <asp:TextBox  ID="txtHoTen" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td style="color: #000000; text-align: right;">Điện Thoại</td>
            <td style="text-align: left">
                <asp:TextBox  ID="txtDienThoai" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" Display="Dynamic" ErrorMessage="Số điện thoại không đúng" ValidationExpression="\+(84)(1\d{9}|9\d{8})|((01)\d{9}|(09)\d{8})" ControlToValidate="txtDienThoai"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="color: #000000; text-align: right;">Tên Đăng Nhập</td>
            <td style="text-align: left">
                <asp:TextBox  ID="txtDangNhap" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDangNhap" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #000000; text-align: right;">
                Mật Khẩu</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtMatKhau" runat="server"  TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtMatKhau" ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="color: #000000; text-align: right;">
                Nhập Lại Mật Khẩu</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtnhaplai" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="(*)" ControlToValidate="txtnhaplai" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ErrorMessage="Mật Khẩu không trùng" ControlToCompare="txtmatkhau" 
                    ControlToValidate="txtnhaplai"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #000000; text-align: right;">
                Email</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="Email sai" ControlToValidate="txtemail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #000000; text-align: right;">
                Địa chỉ</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #000000; text-align: right; height: 29px;">
                Ngày sinh</td>
            <td style="text-align: left; height: 29px;">
                <asp:DropDownList ID="ddlngay" runat="server">
                    <asp:ListItem>Ngày</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlthang" runat="server">
                    <asp:ListItem>Tháng</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txtnam" runat="server" Width="67px" MaxLength="4" TextMode="Number"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td style="color: #000000; text-align: right;">
                Giới tính</td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddlgioitinh" runat="server">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="color: #000000; text-align: right;">
                Tuồi</td>
            <td style="text-align: left">
                <asp:TextBox ID="txttuoi" runat="server" Width="50px" MaxLength="3" TextMode="Number"></asp:TextBox>
                            
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txttuoi" ErrorMessage="Nhập từ 1 đến 999" MaximumValue="999" MinimumValue="1"></asp:RangeValidator>
                            
                            </td>
        </tr>
        <tr>
            <td style="color: #000000; text-align: right;">
                Câu Hỏi</td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddlcauhoi" runat="server">
                    <asp:ListItem>Bạn ghét con gì nhất?</asp:ListItem>
                    <asp:ListItem>Bạn thích con gì nhất?</asp:ListItem>
                </asp:DropDownList>
                            </td>
        </tr>
        <tr>
            <td style="color: #000000; text-align: right;">
                Câu Trả Lời</td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddltrloi" runat="server">
                    <asp:ListItem>Con chó</asp:ListItem>
                    <asp:ListItem>Con mèo</asp:ListItem>
                    <asp:ListItem>Không có</asp:ListItem>
                </asp:DropDownList>
                            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Button ID="btDangky" runat="server" Text="Đăng Ký" Font-Bold="True" 
                    ForeColor="#000000" Width="100px" onclick="btDangky_Click" />
            </td>
            <td style="text-align: left; text-indent: inherit;">
                <asp:Button ID="btLamlai" runat="server" Text="Làm Lại" Font-Bold="True" 
                    ForeColor="#000000" Width="100px" onclick="btLamlai_Click" />
                
            
            <asp:Button ID="btThoat" runat="server" Text="Thoát" Font-Bold="True" 
                    ForeColor="#000000" Width="100px" onclick="btThoat_Click" />
            </td>
        </tr>
    </table>

</asp:Content>