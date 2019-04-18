using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BaiTapLon
{
    public class CartItem
    {//mã sách,tên sách,đơn giá,số lượng bán,thành tiền
        public int MaSach
        {
            get;
            set;
        }
        public string Ten_sach
        {
            get;
            set;
        }
        public int Don_gia
        {
            get;
            set;
        }
        public int So_luong_ban
        {
            get;
            set;
        }
        public int Thanh_tien
        {
            get { return So_luong_ban * Don_gia; }
        }



    }
}