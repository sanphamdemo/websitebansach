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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Ms = Convert.ToInt32(Request.QueryString["MaSach"].Trim());
            SqlConnection con =new SqlConnection(ConfigurationManager.ConnectionStrings["QLBanSach2ConnectionString"].ConnectionString);
            con.Open();
            BanSach Entities = new BanSach();
            Entities.EnforceConstraints = false;
            string strSql =string.Format("select * from SACH where MS={0}",Ms);
            SqlDataAdapter objAdapter = new SqlDataAdapter(strSql, con);
            objAdapter.Fill(Entities.SACH);
            string img = Entities.SACH[0].Hinh_minh_hoa;
            lblTen.Text = Entities.SACH[0].Ten_sach;
            imgMH.ImageUrl = string.Format("~/images/upload/{0}.jpg",img);
            lblChiTiet.Text = Entities.SACH[0].Mo_ta;
            lblGia.Text = Convert.ToString(Entities.SACH[0].Don_gia);
            // Response.Write(Entities.SACH[0].Mo_ta);

        }
    }
}