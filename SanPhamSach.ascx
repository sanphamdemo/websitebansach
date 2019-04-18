<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SanPhamSach.ascx.cs" Inherits="BaiTapLon.SanPhamSach" %>
<style type="text/css">
    .auto-style1 {
        height: 26px;
    }
</style>

<p>
    <asp:Label ID="lbldanhmucsach" runat="server" Text="Label"></asp:Label>
&nbsp;<br />
</p>

<asp:DataList ID="DataList1" runat="server" RepeatColumns="2" Width="100%">
    <ItemTemplate>
        <table style="width:100%;">
            <tr>
                <td colspan="2" rowspan="2" style="width: 80px">
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/upload/"+Eval("Hinh_minh_hoa")+".jpg" %>' />
                    <br />
                    <br />
                </td>
                
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" NavigateUrl='<%# "~/Chitietsach.aspx?MaSach="+Eval("Ms") %>' Text='<%# Eval("Ten_sach") %>'></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>Giá:<%# Eval("Don_gia") %></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style1">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/nut_chonmua.gif" OnCommand="ImageButton1_Command"/>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="lblChiTiet" runat="server" Text='<%# Eval("Mo_ta") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

