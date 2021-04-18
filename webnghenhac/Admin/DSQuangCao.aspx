<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="DSQuangCao.aspx.cs" Inherits="Admin_QuangCao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tblDSQC {
            width: 960px;
            text-align:center;
            margin-left:100px;
        }
        .gvDSQCao{
            width: 960px;
            
        }
        .them{
            color:#0094ff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="tblDSQC">
        <tr>
            <td><h2>DANH SÁCH QUẢNG CÁO</h2></td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="hplThemQC" CssClass="them" runat="server" NavigateUrl="~/Admin/ThemQCao.aspx">Thêm quảng cáo</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvDSQCao" CssClass="gvDSQCao" runat="server" AutoGenerateColumns="False" DataKeyNames="STT" OnRowCommand="gvDSQCao_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="STT" HeaderText="STT" />
                        <asp:BoundField DataField="TenCongTy" HeaderText="Tên Công Ty" />
                        <asp:BoundField DataField="HinhMinhHoa" HeaderText="Hình Quảng Cáo" />
                        <asp:TemplateField HeaderText="Href">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Href") %>' TextMode="MultiLine" Width="200px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ngày Bắt Đầu">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("NgayBatDau","{0:dd/MM/yyyy}") %>' Width="90px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ngày Hết Hạn">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("NgayHetHan","{0:dd/MM/yyyy}") %>' Width="90px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField ButtonType="Image" CommandName="Nutxoa" HeaderText="Xóa" ImageUrl="~/images/Delete.jpg" />
                        <asp:TemplateField HeaderText="Sửa">
                            <ItemTemplate>
                                <asp:HyperLink ID="hplSuaDSQC" runat="server" ImageUrl="~/images/Edit.png" NavigateUrl='<%# "~/Admin/SuaQC.aspx?STT="+Eval("STT") %>'></asp:HyperLink>
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
                <asp:Label ID="lbBaoLoiDSQC" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

