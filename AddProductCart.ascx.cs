using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BaiTapLon.Model;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BaiTapLon
{
    public partial class AddProductCart : System.Web.UI.UserControl
    {
        public List<CartItem> MyShoppingCart
        {
            get
            {
                return Session["shoppingcart"] as List<CartItem>;
            }
            set
            {
                Session["shoppingcart"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["Ms"] == null)
            {
                return;
            }
            if (HttpContext.Current.Session["shoppingcart"] == null)
            {
                Session.Add("shoppingcart", new List<CartItem>());
            }
            int MaSach = int.Parse(Request.QueryString["Ms"]);
            CartItem newItem = MyShoppingCart.FirstOrDefault(m => m.MaSach== MaSach);
            if (newItem != null)
            {
                newItem.So_luong_ban++;
            }
            else
            {
                QLBanSach2Entities db = new QLBanSach2Entities();
                SACH sanPham = db.SACH.Find(MaSach);
                newItem = new CartItem()
                {
                    MaSach = MaSach,
                    Ten_sach = sanPham.Ten_sach,
                    Don_gia = (int)sanPham.Don_gia,
                    So_luong_ban = 1,
                };
                MyShoppingCart.Add(newItem);
            }
            Response.Redirect("ShoppingCart.aspx");

        
    }


}
    }