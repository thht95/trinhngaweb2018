using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<thongtin> tt = (List<thongtin>)Session["carts"];
                if (tt == null || tt.Count == 0)
                {
                    TotalProduct.Text = "Giỏ hàng của bạn trống!";
                    //btnBuy.Visible = false;
                }
                else
                {
                    listcart.DataSource = tt;
                    listcart.DataBind();
                    TotalProduct.Text = tt.Count.ToString()+"sản phẩm";
                }
            }
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = Convert.ToInt32(btn.CommandArgument.ToString());
            List<thongtin> carts = (List<thongtin>)Session["carts"];
            for (int i = carts.Count - 1; i >= 0; --i)
            {
                if (carts[i].Id == id)
                {
                    carts.RemoveAt(i);
                    break;
                }
            }
            Session["carts"] = carts;
            //Response.Write("<script> alert('Thêm vào giỏ hàng thành công!'); </script>");
            //Response.Redirect("Cart.aspx");
            Response.Write("<script> alert('Xóa thành công!');" +
                   "window.location='http://localhost:56903/cart';</script>");
        }

        protected void thanhtoan_Click(object sender, EventArgs e)
        {
            if ((bool)Session["login"]==true)
            {
                Response.Redirect("cart.aspx");
            }
            else
            {
                Response.Write("<script> alert('Bạn chưa đăng nhập, vui lòng đăng nhập để thanh toán!');" +
                   "window.location='http://localhost:56903/dangnhap';</script>");
            }
        }
    }
}