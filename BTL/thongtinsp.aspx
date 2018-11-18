<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thongtinsp.aspx.cs" MasterPageFile="~/Site.Master" Inherits="BTL.thongtinsp" %>
<%@ MasterType virtualpath="~/Site.Master" %>


<asp:Content runat="server" ID="thongtin" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
    <section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center" style="border:none">
									<asp:Image ID="img" runat="server" CssClass="img"/>
								</div>
                                <!--<div class="product-overlay">
									<div class="overlay-content">
										<h2>220.000đ </h2>
										<p>Túi Xách Nữ Da Lộn T10077</p>
                                        <a href="thongtinsp.aspx" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
										<a href="cart.aspx" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>-->
							</div>
						</div>
                    </div>
                    <div class="col-sm-7" style="padding-top:5px;">
                        <asp:Label ID="lblName" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblDescribe" runat="server" Text=""></asp:Label><br />
                        <p>Những chiếc túi đeo chéo luôn làm bạn trông thật nổi bật giữa đám đông. Hãy cùng chia sẻ ngay bí quyết để chọn cho mình một chiếc túi xách hoàn hảo nhất.
                           </p>
                        <asp:Button ID="btnthem" runat="server" CommandArgument="" Text="Thêm vào giỏ hàng" OnClick="btnthem_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
    </form>
</asp:Content>



