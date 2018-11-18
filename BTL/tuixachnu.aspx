<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tuixachnu.aspx.cs" MasterPageFile="~/Site.Master" Inherits="BTL.tuixachnu" %>
<%@ MasterType virtualpath="~/Site.Master" %>

<asp:Content runat="server" ID="tuixachnu" ContentPlaceHolderID="MainContent">
   <div class="container">
		<div class="row">
			<div class="col-sm-12">
                <div class="features_items">
					<h3 class="section-title section-title-center">
                        <b></b>
                        <span class="section-title-main" style="font-size:135%;">Thời Trang Nữ</span><b></b>
                    </h3>
                    <form id="form" runat="server">
                        <asp:ListView ID="ListView1" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-3">
							        <div class="product-image-wrapper">
								        <div class="single-products">
									        <div class="productinfo text-center">
										        <img src="<%# Eval("Path") %>" alt="" />
										        <h2><%# Eval("Price") %></h2>
										        <p><%# Eval("Name") %></p>
                                                <a href="thongtinsp.aspx?id=<%# Eval("Id") %>" class="btn btn-default add-to-cart"><span class="icon-search"></span>Xem chi tiết</a>
                                                <asp:Button ID="btnAdd" CommandArgument='<%# Eval("Id") %>' runat="server" class="btn btn-default add-to-cart" Text="Add to cart" OnClick="btnAdd_Click" />
									        </div>
								        </div>
							        </div>
						        </div>	  
                            </ItemTemplate>
                        </asp:ListView>
                    </form>
				</div> 
            </div>
		</div>
   </div>
</asp:Content>
