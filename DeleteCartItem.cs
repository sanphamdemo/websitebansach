using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BaiTapLon.Model;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BaiTapLon
{
    public class DeleteCartItem
    {
         if (Session["ShoppingCart"] != null && Request.QueryString["Ms"] != null)
            {
                int maSanPham;
                if (int.TryParse(Request.QueryString["Ms"].ToString(), out maSanPham))
                {
                    List<CartItem> ShoppingCart = Session["ShoppingCart"] as List<CartItem>;
        CartItem cardItem = shopppingCart.Single(m => m.MaSach == MaSach);
        shopppingCart.Remove(cardItem);
                    Response.Redirect("ShoppingCart.aspx");
    } 
}
    