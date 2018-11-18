using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Add_Click(object sender, EventArgs e)
        {
            List<thongtin> thongt = (List<thongtin>)Application["sanpham"];
            Button btn = (Button)sender;
            int id = Convert.ToInt32(btn.CommandArgument.ToString());
            List<thongtin> carts = (List<thongtin>)Session["carts"];
            if (carts == null) carts = new List<thongtin>();

            for (int i = 0; i < thongt.Count; ++i)
            {
                if (thongt[i].Id == id)
                {
                    carts.Add(thongt[i]);
                    break;
                }
            }
            Session["carts"] = carts;
            Response.Write("<script> alert('Thêm vào giỏ hàng thành công!'); </script>");
        }
    }
}