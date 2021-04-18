<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucQuangCao.ascx.cs" Inherits="UC_ucQuangCao" %>
<style type="text/css">
    .gvQuangCao{
       width: 300px;
       border-style:none;
       border-color:white;
       text-align:center;
           }
    .hinhqc{
        text-align:center;
    }
</style>

<asp:GridView ID="gvQC" CssClass="gvQuangCao" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="hplHinhQC" CssClass="hinhqc" runat="server" ImageUrl='<%# "~/images/"+Eval("HinhMinhHoa") %>' NavigateUrl='<%# Eval("Href") %>' Width="300px" Target="_blank">[hplHinhQC]</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>











