<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.ascx.cs" Inherits="BaiTapLon.ShoppingCart" %>
 <% if (Session["shoppingcart"] == null || ((List<banhangsach.Models.CartItem>)Session["shoppingcart"]).Count == 0)
        { %>
    <p>
        Giỏ hàng rỗng
    </p>
    <% } %>
    <% else { %>
    <table style="width:100%;">
        <thead>
            <tr>
                <th>Hình</th>
                <th>Tên sản phẩm</th>
                <th>Đơn giá</th>
                <th>Số lượng</th>
                <th>Thành tiền</th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
           
        </thead>
       <% foreach (var cardItem in Session["shoppingcart"] as List<banhangsach.Models.CartItem>) { %>
        <tr>
            <td><img src="/Photos/Products/<%= cardItem.Hinh %>" width="70" height="70" /></td>
            <td> <%= cardItem.TenSanPham %></td>
            <td> <%= cardItem.DonGia.ToString("#,##0") %> đ</td>
            <td> <%= cardItem.SoLuong %></td>
            <td> <%= cardItem.ThanhTien.ToString("#,##0") %> đ</td>
            <td> <a title="Tăng số lượng" href="/EditCartItem.aspx?id=<%= cardItem.MaSanPham %>&change=plus" style="text-decoration:none" class="btn btn-default" ><span class="fa fa-plus"></span></a></td>
            <td> <a title="Giảm số lượng" href="/EditCartItem.aspx?id=<%= cardItem.MaSanPham %>&change=minus" style="text-decoration:none" class="btn btn-default" ><span class="fa fa-minus"></span></a></td>
            <td> <a onclick="return confirm('Bạn có chắc muốn bỏ sản phẩm này khỏi giỏ hàng?');" href="DeleteCartItem?id=<%= cardItem.MaSanPham %>" style="text-decoration:none" class="btn btn-default" ><span class="fa fa-trash-o"></span> Xóa</a></td>
        </tr>
        <% } %>
        <tr>
            <td></td>
            <td></td>
            <td> Tổng số lượng: </td>
            <td> <%= ((List<banhangsach.Models.CartItem>)Session["shoppingcart"]).Sum(m => m.So_luong_ban) %> sản phẩm</td>
            <td> Tổng thành tiền: </td>
            <td> <%= ((List<banhangsach.Models.CartItem>)Session["shoppingcart"]).Sum(m => m.Thanh_tien).ToString("#,##0") %> đồng</td>
            <td></td>
            <td></td>
        </tr>
    </table>
    <% } %> 