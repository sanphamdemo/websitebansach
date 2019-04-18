<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListBook.ascx.cs" Inherits="BaiTapLon.ListBook" %>
<asp:DataList ID="DataList1" runat="server" Height="28px">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Home.aspx?Mcd="+Eval("Mcd")+"&Tencd="+Eval("Ten_chu_de") %>' Text='<%# Eval("Ten_chu_de") %>' Font-Underline="False" Height="28px"></asp:HyperLink>
    </ItemTemplate>
    <SelectedItemStyle Font-Underline="True" />
</asp:DataList>

