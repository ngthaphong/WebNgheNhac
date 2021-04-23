<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="SuaVD.aspx.cs" Inherits="Admin_SuaVD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">    
       .tdsuavd{
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
    <table class="tblSuaVD">
        <br />
        <caption>SỬA VIDEO</caption>
        <tr>
            <td class="tdsuavd">Tên Video:</td>
            <td>
                <asp:TextBox ID="txtSuaTenVD" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
               
            </td>
            <td rowspan="5">

            </td>
            <td class="tdsuavd" rowspan="5">Ngày Cập Nhật Mới:</td>
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
                <asp:Label ID="lbNgay" runat="server" ForeColor="#e91406" Text="Ngày Cập Nhật Cũ: "></asp:Label>
                <asp:TextBox ID="txtNgaycapnhat" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdsuavd">URL Video Lớn:</td>
            <td>
                <asp:TextBox ID="txtSuaURLVDL" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="tdsuavd">URL Video Nhỏ:</td>
            <td>
                <asp:TextBox ID="txtSuaURLVDN" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
               
            </td>
        </tr>
        <tr>
            <td class="tdsuavd">Ca Sĩ:</td>
            <td>
                <asp:TextBox ID="txtSuaCaSi" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdsuavd">Thể Loại:</td>
            <td>
                <asp:DropDownList ID="ddlSuaTL" runat="server" Width="150px">
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td class="tdsuavd">Tác Giả:</td>
            <td>
                <asp:TextBox ID="txtSuaTG" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>              
        <tr>
            <td>&nbsp;</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="4">
                <asp:Button ID="btCapnhatVD" runat="server" Text="Cập nhật" Font-Bold="True" Width="100px" OnClick="btCapnhatVD_Click" />
                <asp:Button ID="btThoat" runat="server" Font-Bold="True" OnClick="btThoat_Click" CausesValidation="false" Text="Thoát" Width="100px" />
            </td>
        </tr>
        <tr>
            <td> </td>
            <td colspan="4">
                <asp:Label ID="lbBaoLoiSuaVD" runat="server" ForeColor="Red"></asp:Label>
                
            </td>
               
        </tr>
        
    </table>
   
</asp:Content>

