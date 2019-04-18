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
    public partial class ListBook : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Kết nối CSDL
            SqlConnection con =
                new SqlConnection(ConfigurationManager.ConnectionStrings["QLBanSach2ConnectionString"].ConnectionString);
            con.Open();
            // Tạo dataset để chứa dữ liệu trên webserver
            BanSach Entities = new BanSach();
            Entities.EnforceConstraints = false;
            // Viết câu lệnh truy vấn dữ liêu
            string strSql = "Select CD.Mcd, CD.Ten_chu_de + " +
                "' (' +ltrim(str(count(CD.Ten_chu_de))) + " +
                "') ' as Ten_chu_de from Chu_de CD " +
                "inner join Sach S on CD.Mcd=S.Mcd group by CD.Mcd, CD.Ten_chu_de";
            // Response.Write(strSql);
            // Tạo DataAdepter
            SqlDataAdapter objAdapter = new SqlDataAdapter(strSql, con);
            // Thực hiện truy vấn và đổ dữ liệu vào dataset
            objAdapter.Fill(Entities.CHU_DE);
            DataList1.DataSource = Entities.CHU_DE;
            DataList1.DataBind();
        }
    }
}