<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="DSYeuCau.aspx.cs" Inherits="Admin_DSYeuCau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .tbldsYeuCau{
         
            text-align:center;
            margin:auto;
        }
    </style>
    <table class="tbldsYeuCau">
      <caption>
          <h2>DANH SÁCH YÊU CẦU CỦA THÀNH VIÊN</h2>
      </caption>
        <tr>
            <td>
                <asp:GridView ID="gvDSYeuCau" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowCommand="gvDSYeuCau_RowCommand">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="STTYC" HeaderText="STT" />
            <asp:BoundField DataField="TenDN" HeaderText="Tên Đăng Nhập" />
            <asp:BoundField DataField="MaTL" HeaderText="Mã Thể Loại" />
            <asp:BoundField DataField="Loai" HeaderText="Loại" />
            <asp:TemplateField HeaderText="Mô Tả">
                <ItemTemplate>
                    <asp:TextBox ID="txtMota" runat="server" Text='<%# Eval("MoTa") %>' TextMode="MultiLine" Width="200px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField ButtonType="Image" HeaderText="Xóa" ImageUrl="~/images/Delete.jpg" CommandName="Nutxoa" />
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

                <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>

            </td>
        </tr>
    </table>
    
</asp:Content>

