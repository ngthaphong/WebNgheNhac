<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="DSVideo.aspx.cs" Inherits="Admin_DSVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style type="text/css">
        .tblDSVideo {
            width:960px;
            text-align:center;
            margin-left:100px;
        }
        .gvDSV{
            width:960px;
            
        }
        .ThemVideo{
            color:#0094ff;
        }
    </style>
    <table class="tblDSVideo">
        <tr>
            <td><h2>DANH SÁCH VIDEO</h2></td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="hplThemVideo" CssClass="ThemVideo" runat="server" NavigateUrl="~/Admin/ThemVideo.aspx">Thêm video</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvDSVideo" CssClass="gvDSV" runat="server"  DataKeyNames="MaVD" OnRowCommand="gvDSVideo_RowCommand" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True" OnPageIndexChanging="gvDSVideo_PageIndexChanging" PageSize="4">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="MaVD" HeaderText="Mã Video" />
                        <asp:TemplateField HeaderText="URL Lớn">
                            <ItemTemplate>
                                <asp:TextBox ID="txtURLLon" runat="server" Text='<%# Eval("URLVideoL") %>' TextMode="MultiLine" Width="100px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="URL Nhỏ">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("URLVideoN") %>' TextMode="MultiLine" Width="100px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tên Video">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("TenVD") %>' TextMode="MultiLine" Width="100px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="MaTL" HeaderText="Mã Thể Loại" />
                        <asp:BoundField DataField="TacGia" HeaderText="Tác Giả" />
                        <asp:BoundField DataField="CaSi" HeaderText="Ca Sĩ" />
                        <asp:TemplateField HeaderText="Ngày Cập Nhật">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("NgayCapNhat","{0:dd/MM/yyyy}") %>' Width="90px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField ButtonType="Image" CommandName="Nutxoa" HeaderText="Xóa" ImageUrl="~/images/Delete.jpg" />
                        <asp:TemplateField HeaderText="Sửa">
                            <ItemTemplate>
                                <asp:HyperLink ID="hplSuaVideo" runat="server" ImageUrl="~/images/Edit.png" NavigateUrl='<%# "~/Admin/SuaVD.aspx?MaVD="+Eval("MaVD") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerSettings FirstPageText="" NextPageText="" />
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
                <asp:Label ID="lbBaoLoiDSVideo" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

