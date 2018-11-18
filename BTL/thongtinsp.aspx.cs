using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class thongtinsp : System.Web.UI.Page
    {
        private int iId;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Request.QueryString["id"] == null)
            {
                Response.Redirect("trangchu.aspx", true);

            }
            else
            {
                List<thongtin> tt = (List<thongtin>)Application["sanpham"];
                foreach (thongtin sp in tt)
                {
                    if (sp.Id.ToString() == Request.QueryString["id"])
                    {
                        img.ImageUrl = sp.Path;
                        lblName.Text = sp.Name;
                        lblDescribe.Text = sp.Describe;
                        btnthem.CommandArgument = sp.Id.ToString();
                    }
                }
            }*/
            try
            {
                string id = Request.QueryString["id"].ToString();
                iId = Convert.ToInt32(id);
                List<thongtin> thongtin = (List<thongtin>)Application["sanpham"];
                thongtin tt = thongtin[iId - 1];
                img.ImageUrl = tt.Path;
                lblName.Text = tt.Name;
                lblDescribe.Text = tt.Describe;
                btnthem.CommandArgument = tt.Id.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('Chọn 1 sản phẩm để xem!');" +
                   "window.location='http://localhost:56903/trangchu';</script>");
            }
        }

        protected void btnthem_Click(object sender, EventArgs e)
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