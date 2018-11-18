using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class dangxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Remove("taikhoan");
            Session.Remove("matkhau");
            Session.Remove("nguoidung");
            Response.Redirect("~/trangchu.aspx");
	//final_test_2
        }
    }
}
