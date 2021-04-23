<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NhacTheoTheLoai.aspx.cs" Inherits="NhacTheoTheLoai" %>

<%@ Register Src="~/UC/ucBaiHatTheoTL.ascx" TagPrefix="uc1" TagName="ucBaiHatTheoTL" %>
<%@ Register Src="~/UC/ucVideoTheoTL.ascx" TagPrefix="uc1" TagName="ucVideoTheoTL" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ucVideoTheoTL runat="server" ID="ucVideoTheoTL" />
            <uc1:ucBaiHatTheoTL runat="server" ID="ucBaiHatTheoTL" />
 

</asp:Content>

