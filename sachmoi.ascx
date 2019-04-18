<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="sachmoi.ascx.cs" Inherits="BaiTapLon.sachmoi" %>
<asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/muitendo.gif" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "#" %>' Target="_blank" Text='<%# Eval("Ten_sach") %>' Font-Underline="False"></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>

