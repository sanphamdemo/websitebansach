using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BaiTapLon.Model;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BaiTapLon.Model;

namespace BaiTapLon
{
    public class EditCart
        
    {
     QLBanSach2Entities db = new QLBanSach2Entities();
        if (Session["ShoppingCart"] != null && Request.QueryString["Ms"] != null && Request.QueryString["change"] != null)
            {
                int maSanPham;
                if(int.TryParse(Request.QueryString["id"].ToString(), out maSanPham))
                {
                    List<CartItem> shopppingCart = Session["shoppingcart"] as List<CartItem>;
        CartItem cardItemEdit = shopppingCart.Single(m => m.Ms == Ms);
                    if(Request.QueryString["change"] == "plus")
                    {
                        cardItemEdit.So_luong_ban++;
                    }
                    else if(Request.QueryString["change"] == "minus")
                    {
                        if(cardItemEdit.So_luong_ban > 1)
                        {
                            cardItemEdit.So_luong_ban--;
                        }
                        
                    }
                }
            }
                Response.Redirect("ShoppingCart.aspx");
    }
}