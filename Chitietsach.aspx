<%@ Page Title="" Language="C#" MasterPageFile="~/sach.Master" AutoEventWireup="true" CodeBehind="Chitietsach.aspx.cs" Inherits="BaiTapLon.WebForm2" %>
<%@ Register src="SanPhamSach.ascx" tagname="SanPhamSach" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            height: 27px;
        }
        .auto-style13 {
            width: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td rowspan="4" class="auto-style13">
                <asp:Image ID="imgMH" Width="150px" runat="server" />
            </td>
            <td class="auto-style12">
                <asp:Label ID="lblTen" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblChiTiet" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblGia" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Content>
