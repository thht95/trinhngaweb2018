using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            //thong tin
            List<thongtin> thongtin = new List<thongtin>();
            thongtin tt;
            for (int i = 1; i <= 16; ++i)
            {
                tt = new thongtin();
                tt.Id = i;
                tt.Name = "Sản phẩm" + i;
                tt.Path = "Content/img/sp/sp" + i + ".jpg";
                tt.Describe = "Sản Phẩm Thời Trang Nữ!";
                tt.Price = 1000000;
                thongtin.Add(tt);
            }
            Application["sanpham"] = thongtin;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = false;
            Session["taikhoan"] = "";
            Session["matkhau"] = "";
            Session["nguoidung"] = "";
            Session["carts"] = new List<thongtin>();
        }
    }
}