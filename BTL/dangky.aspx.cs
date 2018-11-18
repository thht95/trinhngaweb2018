using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndk_Click(object sender, EventArgs e)
        {
            if (txtPassXN.Text != txtPass.Text)
            {
                Response.Write("<script>confirm('Mật Khẩu nhập lại Không đúng');" +
                    "</script>");
            }

            else
            {
                Session["taikhoan"] = txttendk.Text;
                Session["matkhau"] = txtPass.Text;
                Session["nguoidung"] = txtngdung.Text;
                Response.Write("<script> confirm('Bạn đã đăng ký thành công');" +
                    "window.location='http://localhost:56903/dangnhap';</script>");
            }
        }
    }
}