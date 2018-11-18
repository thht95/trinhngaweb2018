using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["login"] = false;
        }
        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            string tai_khoan = txtTK.Text;
            string mat_khau = txtPass.Text;
            if (tai_khoan != Session["taikhoan"].ToString() && mat_khau == Session["matkhau"].ToString())
            {
                Response.Write("<script> alert('Tài khoản sai') </script>");
            }
            if (tai_khoan == Session["taikhoan"].ToString() && mat_khau != Session["matkhau"].ToString())
            {
                Response.Write("<script> alert('Tài khoản sai') </script>");
            }
            if (tai_khoan != Session["taikhoan"].ToString() && mat_khau != Session["matkhau"].ToString())
            {
                Response.Write("<script> alert('Tài khoản sai') </script>");
            }
            if (tai_khoan == Session["taikhoan"].ToString() && mat_khau == Session["matkhau"].ToString())
            {
                Session["login"] = true;
                Response.Write("<script> confirm('Bạn đã đăng nhập thành công');" +
                    "window.location='http://localhost:56903/trangchu';</script>");
            }
        }
    }
}