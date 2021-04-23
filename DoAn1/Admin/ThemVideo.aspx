<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="ThemVideo.aspx.cs" Inherits="Admin_ThemVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">    
       .tdthemvd{
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
       .tblThemvd{
           width:960px;
           margin-left:80px;
       }
   </style>
    <table class="tblThemvd">
        <br />
        <caption>THÊM VIDEO</caption>
        <tr>
            <td class="tdthemvd">Tên Video:</td>
            <td>
                <asp:TextBox ID="txtThemTenVD" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTenVD" runat="server" ControlToValidate="txtThemTenVD" ErrorMessage="Tên Video không được bỏ trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
            <td rowspan="5">

            </td>
            <td class="tdthemvd" rowspan="5">Ngày Cập Nhật:</td>
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
            <td class="tdthemvd">URL Video Lớn:</td>
            <td>
                <asp:TextBox ID="txtThemURLVDL" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvURLVDL" runat="server" ControlToValidate="txtThemURLVDL" ErrorMessage="URL Video không được bỏ trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdthemvd">URL Video Nhỏ:</td>
            <td>
                <asp:TextBox ID="txtThemURLVDN" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvURLVDN" runat="server" ControlToValidate="txtThemURLVDN" ErrorMessage="URL Video không được bỏ trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdthemvd">Ca Sĩ:</td>
            <td>
                <asp:TextBox ID="txtThemCaSi" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdthemvd">Thể Loại:</td>
            <td>
                <asp:DropDownList ID="ddlThemTL" runat="server" Width="150px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvThemTL" runat="server" ControlToValidate="ddlThemTL" ErrorMessage="Thể loại không được bỏ trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdthemvd">Tác Giả:</td>
            <td>
                <asp:TextBox ID="txtThemTG" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>              
        <tr>
            <td>&nbsp;</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="4">
                <asp:Button ID="btThemVD" runat="server" Text="Thêm" Font-Bold="True" Width="100px" OnClick="btThem_Click" />
                <asp:Button ID="btThoat" runat="server" Font-Bold="True" OnClick="btThoat_Click" CausesValidation="false" Text="Thoát" Width="100px" />
            </td>
        </tr>
        <tr>
            <td> </td>
            <td colspan="4">
                <asp:Label ID="lbBaoLoiThemVD" runat="server" ForeColor="Red"></asp:Label>
                <asp:ValidationSummary ID="vsBaoloi" runat="server" ForeColor="Red" />
            </td>
               
        </tr>
        
    </table>
   
</asp:Content>

