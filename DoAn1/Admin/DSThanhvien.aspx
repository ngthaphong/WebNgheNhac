<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="DSThanhvien.aspx.cs" Inherits="Admin_DSThanhvien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .tblqtvien {
            width: 960px;
            text-align:center;
            margin-left:20px;
        }
        .them{
            color:#0094ff;
        }
    </style>
    <table class="tblqtvien">
        <tr>
            <td><h2>DANH SÁCH THÀNH VIÊN</h2></td>
        </tr>        
        <tr>
            <td>
                <asp:GridView ID="gvDSQLTVien" runat="server" AutoGenerateColumns="False" DataKeyNames="TenDN" OnRowCommand="gvDSQLTVien_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowCancelingEdit="gvDSQLTVien_RowCancelingEdit" OnRowEditing="gvDSQLTVien_RowEditing" OnRowUpdating="gvDSQLTVien_RowUpdating">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="HoTen" HeaderText="Họ Tên " ReadOnly="True" />
                        <asp:BoundField DataField="TenDN" HeaderText="Tên Đăng Nhập" ReadOnly="True" />
                        <asp:BoundField DataField="MatKhau" HeaderText="Mật Khẩu" ReadOnly="True" />
                        <asp:BoundField DataField="DienThoai" HeaderText="Điện Thoại" ReadOnly="True" />
                        <asp:BoundField DataField="Tuoi" HeaderText="Tuổi" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Ngày Đăng ký">
                            <ItemTemplate>
                                <asp:TextBox ID="txtNgayDangKy" runat="server" Text='<%# Eval("NgayDangKy","{0:dd/MM/yyyyy}") %>' Width="80px" ReadOnly="True"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" ReadOnly="True" />
                        <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:TextBox ID="TxtEmail" runat="server" Text='<%# Eval("Email") %>' TextMode="MultiLine" Width="80px" ReadOnly="True"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ngày Sinh">
                            <ItemTemplate>
                                <asp:TextBox ID="TxtNgaySinh" runat="server" Text='<%# Eval("NgaySinh","{0:dd/MM/yyyy}") %>' Width="80px" ReadOnly="True"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Câu hỏi bảo mật">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("CauHoiBaoMat") %>' TextMode="MultiLine" Width="80px" ReadOnly="True"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Câu trả lời">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("CauTraLoi") %>' TextMode="MultiLine" Width="50px" ReadOnly="True"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="QuyenAdmin" HeaderText="Quyền Admin" />
                        <asp:ButtonField ButtonType="Image" CommandName="Nutxoa" HeaderText="Xóa" ImageUrl="~/images/Delete.jpg" />
                        <asp:CommandField ButtonType="Image" EditImageUrl="~/images/Edit.png" HeaderText="Sửa" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbBaoLoiDSQTV" runat="server" ForeColor="Red" ></asp:Label></td>
        </tr>
    </table>

</asp:Content>

