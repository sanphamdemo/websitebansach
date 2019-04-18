using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BaiTapLon
{
    public partial class SanPhamSach : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string s = Request.QueryString["Mcd"];
            string ten = Request.QueryString["Tencd"];
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["QLBanSach2ConnectionString"].ConnectionString);
            con.Open();
            BanSach Entities = new BanSach();
            Entities.EnforceConstraints = false;
            string strSql = "Select Ms,Ten_sach,Don_gia,Hinh_minh_hoa from SACH where Mcd='"+ s + "' order by Ngay_cap_nhat DESC";
            SqlDataAdapter objAdapter = new SqlDataAdapter(strSql, con);
            objAdapter.Fill(Entities.SACH);
            DataList1.DataSource = Entities.SACH;
            DataList1.DataBind();
            lbldanhmucsach.Text = "Danh Mục Sách: " + ten;

        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)//xử lý nút chọn mua
        {

        }
    }
}