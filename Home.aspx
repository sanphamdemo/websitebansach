<%@ Page Title="" Language="C#" MasterPageFile="~/sach.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BaiTapLon.WebForm5" %>
<%@ Register src="SanPhamSach.ascx" tagname="SanPhamSach" tagprefix="uc7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                            <uc7:SanPhamSach ID="SanPhamSach1" runat="server" />
                        </asp:Content>

