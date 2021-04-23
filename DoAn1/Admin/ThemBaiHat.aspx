<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="ThemBaiHat.aspx.cs" Inherits="Admin_ThemBaiHat" %>

<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

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
   </style>
    <table class="tblThembh">
        <br />
        <caption>THÊM BÀI HÁT</caption>
        <tr>
            <td class="tdthembh">Tên Bài Hát:</td>
            <td>
                <asp:TextBox ID="txtThemTenBH" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTenBH" runat="server" ControlToValidate="txtThemTenBH" ErrorMessage="Tên Bài Hát Không được bỏ trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
            <td rowspan="5">

            </td>
            <td class="tdthembh" rowspan="5">Ngày Cập Nhật:</td>
            <td rowspan="5">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="tdthembh">URL Bài Hát:</td>
            <td>
                <asp:TextBox ID="txtThemURLBH" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvURLBaiHat" runat="server" ControlToValidate="txtThemURLBH" ErrorMessage="URL Bài Hát không được bỏ trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="tdthembh">Ca Sĩ:</td>
            <td>
                <asp:TextBox ID="txtThemCaSi" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdthembh">Thể Loại:</td>
            <td>
                <asp:DropDownList ID="ddlThemTL" runat="server" Width="150px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvThemTL" runat="server" ControlToValidate="ddlThemTL" ErrorMessage="Thể loại không được bỏ trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdthembh">Tác Giả:</td>
            <td>
                <asp:TextBox ID="txtThemTG" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>      
        <tr>
            <td class="tdthembh">Lời Bài Hát:</td>
            <td colspan="4">
                <CKEditor:CKEditorControl ID="txtLoiBaiHat"  BasePath="~/CK/ckeditor" runat="server"></CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btThem" runat="server" Text="Thêm" Font-Bold="True" Width="100px" OnClick="btThem_Click" />
                <asp:Button ID="btthoat" runat="server" Font-Bold="True" OnClick="btthoat_Click" CausesValidation="false" Text="Thoát" Width="100px" />
            </td>
        </tr>
        <tr>
            <td> </td>
            <td>
                <asp:Label ID="lbBaoLoiThemBH" runat="server" ForeColor="Red"></asp:Label>
                <asp:ValidationSummary ID="vsBaoloi" runat="server" ForeColor="Red" />
            </td>
               
        </tr>
        
    </table>
   
</asp:Content>

