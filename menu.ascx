<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="menu.ascx.cs" Inherits="BaiTapLon.menu" %>
<style type="text/css">
    .menu{
        float:right;
        margin:0 auto;
        overflow:auto;
        padding-right:20px;
        font-family:sans-serif;
        color:white;
        font-size:15px;
    }
</style>
<div class="menu">
<asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
    <Items>
        <asp:MenuItem  Text="Trang chủ" Value="Trang chủ" Target="_blank"></asp:MenuItem>
        <asp:MenuItem Text="Sách mới" Value="Sách mới" Target="_blank"></asp:MenuItem>
        <asp:MenuItem Text="Giới thiệu" Value="Giới thiệu" Target="_blank"></asp:MenuItem>
        <asp:MenuItem Text="Đăng nhập" Value="Đăng nhập" Target="_blank"></asp:MenuItem>
        <asp:MenuItem Text="Đăng ký" Value="Đăng ký" Target="_blank"></asp:MenuItem>
    </Items>
</asp:Menu>
    </div>

