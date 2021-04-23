<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<%@ Register Src="~/UC/ucDSVideoHot.ascx" TagPrefix="uc1" TagName="ucDSVideoHot" %>
<%@ Register Src="~/UC/ucDanhMucBaiHat.ascx" TagPrefix="uc1" TagName="ucDanhMucBaiHat" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ucDSVideoHot runat="server" id="ucDSVideoHot" />
    <uc1:ucDanhMucBaiHat runat="server" ID="ucDanhMucBaiHat" />
</asp:Content>

