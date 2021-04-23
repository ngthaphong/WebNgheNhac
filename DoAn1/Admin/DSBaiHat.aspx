<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="DSBaiHat.aspx.cs" Inherits="Admin_BaiHat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
       .tbldsbaihat{
           width:960px;
           text-align:center;
           margin-left:80px;
       }
       .gvDSBHat{
            width:960px;            
            
        }
       .them{
           color:#1E90FF;

       }
        .auto-style2 {
            height: 25px;
        }
    </style>
    <table class="tbldsbaihat">
        <tr class="hang1">
            <td><h2>DANH SÁCH BÀI HÁT</h2></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:HyperLink ID="hplThembh" CssClass="them" runat="server" NavigateUrl="~/Admin/ThemBaiHat.aspx">Thêm bài hát</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td >
                <asp:GridView ID="gvDSBHat" CssClass="gvDSBHat" runat="server"  DataKeyNames="Id" OnRowCommand="gvDSBaiHat_RowCommand" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" AllowPaging="true" OnPageIndexChanging="gvDSBHat_PageIndexChanging" PageSize="4" >
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID " />
                        <asp:TemplateField HeaderText="URL Bài Hát">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("URLBaiHat").ToString().Replace("\n","<br>") %>' TextMode="MultiLine" Width="200px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="TenBH" HeaderText="Tên Bài Hát" />
                        <asp:BoundField DataField="CaSi" HeaderText="Ca Sĩ" />
                        <asp:BoundField DataField="MaTL" HeaderText="Mã Thể Loại" />
                        <asp:BoundField DataField="TacGia" HeaderText="Tác Giả" />
                        <asp:TemplateField HeaderText="Ngày Cập Nhật">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("NgayCapNhat","{0:dd/MM/yyyy}") %>' Width="100px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Lời Bài Hát">
                            <ItemTemplate>
                                <asp:TextBox ID="txtLBH" runat="server" Text='<%# Eval("LoiBaiHat") %>' TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField ButtonType="Image" HeaderText="Xóa" Text="Button" CommandName="Nutxoa" ImageUrl="~/images/Delete.jpg" />
                        <asp:TemplateField HeaderText="Sửa">
                            <ItemTemplate>
                                <asp:HyperLink ID="hplSuaBH" runat="server" ImageUrl="~/images/Edit.png" NavigateUrl='<%# "~/Admin/SuaBH.aspx?Id="+Eval("Id") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:Label ID="lbBaoLoiBaiHat" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

