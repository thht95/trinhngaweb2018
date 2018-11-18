<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" MasterPageFile="~/Site.Master" Inherits="BTL.trangchu" %>
<%@ MasterType virtualpath="~/Site.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img src="Content/img/sl3.png" alt="" />
							</div>
							<div class="item">
								<img src="Content/img/sl2.jpg" alt="" />
							</div>
							<div class="item">
							    <img src="Content/img/sl1.jpg" alt="" />
							</div>
						</div>
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/slider-->
    <section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
                    <form id="form" runat="server">
					<div class="features_items">
						<h3 class="section-title section-title-center">
                            <b></b>
                            <span class="section-title-main" style="font-size:135%;">SẢN PHẨM MỚI</span><b></b>
                        </h3>
						<div class="col-sm-3 col-xs-6">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="Content/img/sp/sp1.jpg" alt="" />
										<h2>220.000đ </h2>
										<p>Túi Xách  T10077</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
                                    <div class="product-overlay">
										<div class="overlay-content">
											<h2>220.000đ </h2>
										    <p>Túi Xách  T10077</p>
                                            <a href="thongtinsp.aspx?id=1" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											<asp:Button ID="Add" CommandArgument='1' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										</div>
									</div>
								</div>
							</div>
						</div>
                        <div class="col-sm-3 col-xs-6">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="Content/img/sp/sp2.jpg" alt="" />
										<h2>250,000₫</h2>
										<p>Túi frame nữ hợp kim Balana màu hồng</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
                                    <div class="product-overlay">
										<div class="overlay-content">
											<h2>250,000₫</h2>
										    <p>Túi frame nữ hợp kim Balana màu hồng</p>
                                            <a href="thongtinsp.aspx?id=2" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											<asp:Button ID="Add1" CommandArgument='2' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										</div>
									</div>
								</div>
							</div>
						</div>	
                        <div class="col-sm-3 col-xs-6">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="Content/img/sp/sp3.jpg" alt="" />
										<h2>499,000₫</h2>
										<p>Túi Trapeze mặt cười Cabwer đen</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
                                    <div class="product-overlay">
										<div class="overlay-content">
											<h2>499,000₫</h2>
										    <p>Túi Trapeze mặt cười Cabwer đen</p>
                                            <a href="thongtinsp.aspx?id=3" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											<asp:Button ID="Button2" CommandArgument='3' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										</div>
									</div>
								</div>
							</div>
						</div>	
                        <div class="col-sm-3 col-xs-6">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="Content/img/sp/sp4.jpg" alt="" />
										<h2>449,000₫</h2>
										<p>Túi Frame in họa tiết móc tua rua PDG</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
                                    <div class="product-overlay">
										<div class="overlay-content">
											<h2>449,000₫</h2>
										    <p>Túi Frame in họa tiết móc tua rua PDG</p>
                                            <a href="thongtinsp.aspx?id=4" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											<asp:Button ID="Button3" CommandArgument='4' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										</div>
									</div>
								</div>
							</div>
						</div>	
                        <div class="col-sm-3 col-xs-6">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="Content/img/sp/sp5.jpg" alt="" />
										<h2>195.000đ </h2>
										<p>Túi Đeo Chéo Nữ Nhỏ T10074</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
                                    <div class="product-overlay">
										<div class="overlay-content">
											<h2>195.000đ </h2>
										    <p>Túi Đeo Chéo Nữ Nhỏ T10074</p>
                                            <a href="thongtinsp.aspx?id=5" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											<asp:Button ID="Button4" CommandArgument='5' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										</div>
									</div>
								</div>
							</div>
						</div>
                        <div class="col-sm-3 col-xs-6">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="Content/img/sp/sp6.jpg" alt="" />
										<h2>120.000đ </h2>
										<p>Túi Mặt Cười xinh màu vàng T10073</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
                                    <div class="product-overlay">
										<div class="overlay-content">
											<h2>120.000đ </h2>
										    <p>Túi Mặt Cười xinh màu vàng T10073</p>
                                            <a href="thongtinsp.aspx?id=6" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											<asp:Button ID="Button5" CommandArgument='6' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										</div>
									</div>
								</div>
							</div>
						</div>
                        <div class="col-sm-3 col-xs-6">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="Content/img/sp/sp7.jpg" alt="" />
										<h2>190.000đ </h2>
										<p>Túi Cầm Tay Nữ T10067</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
                                    <div class="product-overlay">
										<div class="overlay-content">
											<h2>190.000đ </h2>
										    <p>Túi Cầm Tay Nữ T10067</p>
                                            <a href="thongtinsp.aspx?id=7" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											<asp:Button ID="Button6" CommandArgument='7' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										</div>
									</div>
								</div>
							</div>
						</div>
                        <div class="col-sm-3 col-xs-6">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="Content/img/sp/sp8.jpg" alt="" />
										<h2>420.000đ </h2>
										<p>Túi Xách Nữ Công Sở T10042</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
                                    <div class="product-overlay">
										<div class="overlay-content">
											<h2>420.000đ </h2>
										    <p>Túi Xách Nữ Công Sở T10042</p>
                                            <a href="thongtinsp.aspx?id=8" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											<asp:Button ID="Button7" CommandArgument='8' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										</div>
									</div>
								</div>
							</div>
						</div>			
					</div><!--title 1-->     
                    <div>
                        <h3 class="section-title section-title-center">
                            <b></b>
                            <span class="section-title-main" style="font-size:135%;">SẢN PHẨM BÁN CHẠY</span><b></b>
                        </h3>
						    <div class="col-sm-3 col-xs-6">
							    <div class="product-image-wrapper">
								    <div class="single-products">
									    <div class="productinfo text-center">
										    <img src="Content/img/sp/sp9.jpg" alt="" />
										    <h2>590,000₫</h2>
										    <p>Túi xách thời trang Juno cỡ lớn hoạ tiết đan lưới đẹp mắt TXL002</p>
										    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									    </div>
                                        <div class="product-overlay">
										    <div class="overlay-content">
											    <h2>590,000₫</h2>
										        <p>Túi xách thời trang Juno cỡ lớn hoạ tiết đan lưới đẹp mắt TXL002</p>
                                                <a href="thongtinsp.aspx?id=9" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											    <asp:Button ID="Button8" CommandArgument='9' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										    </div>
									    </div>
								    </div>
							    </div>
						    </div>
                            <div class="col-sm-3 col-xs-6">
							    <div class="product-image-wrapper">
								    <div class="single-products">
									    <div class="productinfo text-center">
										    <img src="Content/img/sp/sp10.jpg" alt="" />
										    <h2>950,000₫</h2>
										    <p>Túi xách thời trang Juno cỡ trung quý phái TXT013</p>
										    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									    </div>
                                        <div class="product-overlay">
										    <div class="overlay-content">
											    <h2>950,000₫</h2>
										        <p>Túi xách thời trang Juno cỡ trung quý phái TXT013</p>
                                                <a href="thongtinsp.aspx?id=10" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											    <asp:Button ID="Button9" CommandArgument='10' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										    </div>
									    </div>
								    </div>
							    </div>
						    </div>	
                            <div class="col-sm-3 col-xs-6">
							    <div class="product-image-wrapper">
								    <div class="single-products">
									    <div class="productinfo text-center">
										    <img src="Content/img/sp/sp11.jpg" alt="" />
										    <h2>115.000đ</h2>
										    <p>Ví Cầm Tay Nữ Trang Trí Vương Miện T10049</p>
										    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									    </div>
                                        <div class="product-overlay">
										    <div class="overlay-content">
											    <h2>115.000đ</h2>
										        <p>Ví Cầm Tay Nữ Trang Trí Vương Miện T10049</p>
                                                <a href="thongtinsp.aspx?id=11" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											    <asp:Button ID="Button10" CommandArgument='11' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										    </div>
									    </div>
								    </div>
							    </div>
						    </div>	
                            <div class="col-sm-3 col-xs-6">
							    <div class="product-image-wrapper">
								    <div class="single-products">
									    <div class="productinfo text-center">
										    <img src="Content/img/sp/sp12.jpg" alt="" />
										    <h2>449,000₫</h2>
										    <p>Bộ Túi 4 Cái Phong Cách Hàn Quốc T10041</p>
										    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        
									    </div>
                                        <div class="product-overlay">
										    <div class="overlay-content">
											    <h2>449,000₫</h2>
										        <p>Bộ Túi 4 Cái Phong Cách Hàn Quốc T10041</p>
                                                <a href="thongtinsp.aspx?id=12" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											    <asp:Button ID="Button11" CommandArgument='12' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										    </div>
									    </div>
								    </div>
							    </div>
						    </div>	
                            <div class="col-sm-3 col-xs-6">
							    <div class="product-image-wrapper">
								    <div class="single-products">
									    <div class="productinfo text-center">
										    <img src="Content/img/sp/sp13.jpg" alt="" />
										    <h2>255.000đ </h2>
										    <p>Túi Xách Nữ T10052</p>
										    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									    </div>
                                        <div class="product-overlay">
										    <div class="overlay-content">
											    <h2>255.000đ </h2>
										        <p>Túi Xách Nữ T10052</p>
                                                <a href="thongtinsp.aspx?id=13" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											    <asp:Button ID="Button12" CommandArgument='13' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										    </div>
									    </div>
								    </div>
							    </div>
						    </div>
                            <div class="col-sm-3 col-xs-6">
							    <div class="product-image-wrapper">
								    <div class="single-products">
									    <div class="productinfo text-center">
										    <img src="Content/img/sp/sp14.jpg" alt="" />
										    <h2>135.000đ </h2>
										    <p>Túi Xách Nữ Hình Cú Mèo T10010</p>
										    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									    </div>
                                        <div class="product-overlay">
										    <div class="overlay-content">
											    <h2>135.000đ </h2>
										        <p>Túi Xách Nữ Hình Cú Mèo T10010</p>
                                                <a href="thongtinsp.aspx?id=14" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											    <asp:Button ID="Button13" CommandArgument='14' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										    </div>
									    </div>
								    </div>
							    </div>
						    </div>
                            <div class="col-sm-3 col-xs-6">
							    <div class="product-image-wrapper">
								    <div class="single-products">
									    <div class="productinfo text-center">
										    <img src="Content/img/sp/sp15.jpg" alt="" />
										    <h2>190.000đ </h2>
										    <p>Túi Xách Nữ Da Lộn T10059</p>
										    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									    </div>
                                        <div class="product-overlay">
										    <div class="overlay-content">
											    <h2>190.000đ </h2>
										        <p>Túi Xách Nữ Da Lộn T10059</p>
                                                <a href="thongtinsp.aspx?id=15" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											    <asp:Button ID="Button14" CommandArgument='15' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										    </div>
									    </div>
								    </div>
							    </div>
						    </div>
                            <div class="col-sm-3 col-xs-6">
							    <div class="product-image-wrapper">
								    <div class="single-products">
									    <div class="productinfo text-center">
										    <img src="Content/img/sp/sp16.jpg" alt="" />
										    <h2>210.000đ </h2>
										    <p>Túi Đựng Điện Thoại Nữ T10068</p>
										    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									    </div>
                                        <div class="product-overlay">
										    <div class="overlay-content">
											    <h2>210.000đ </h2>
										        <p>Túi Đựng Điện Thoại Nữ T10068</p>
                                                <a href="thongtinsp.aspx?id=16" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
											    <asp:Button ID="Button15" CommandArgument='16' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="Add_Click" />
										    </div>
									    </div>
								    </div>
							    </div>
						    </div>
                        
                    </div>	
                    </form>			
				</div>
                <div class="col-sm-12">
                    <h3 class="section-title section-title-center">
                        <b></b>
                        <span class="section-title-main" style="font-size:135%;">THÔNG TIN HỮU ÍCH</span><b></b>
                    </h3>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-3">
                                <img src="Content/img/ThongTin/tt1.jpg">
                                <h3><a href="#">Cách chọn cặp da nam phù hợp nhu cầu và từng hoàn cảnh</a></h3>
                                <div class="description">
                                    <p>Bài viết tổng hợp các thông tin cần thiết về cách chọn cặp da nam cho các chàng đang có ý định sắm cho mình một chiếc cặp da.</p>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <img src="Content/img/ThongTin/tt2.jpg">
                                <h3><a href="#">Mẹo chọn túi đeo chéo xu thế 2017</a></h3>
                                <div class="description">
                                    <p>Những chiếc túi đeo chéo luôn làm bạn trông thật nổi bật giữa đám đông. Hãy cùng chia sẻ ngay bí quyết để chọn cho mình một chiếc túi xách hoàn hảo nhất.
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <img src="Content/img/ThongTin/tt3.jpg">
                                <h3><a href="#">Cách lựa chọn túi da thật sang trọng, đẹp và phù hợp</a></h3>
                                <div class="description">
                                    <p>Túi da thật là một trong các loại túi xách thời trang được ưa chuộng. Nhưng không phải ai cũng biết cách lựa chọn chiếc túi da thật sang trọng, đẹp và phù hợp.

                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <img src="Content/img/ThongTin/tt4.jpg">
                                <h3><a href="#">Top 3 tiêu chí bạn phải biết để chọn túi xách da nam “chuẩn men”</a></h3>
                                <div class="description">
                                    <p>Nhiều ngược mặc định rằng tui xách là chỉ dành cho nữ. Bài viết này sẽ chỉ cho bạn bí quyết để chọn chiếc túi xách da nam  “chuẩn men”.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</section>
</asp:Content>

