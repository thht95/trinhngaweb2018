<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" MasterPageFile="~/Site.Master" Inherits="BTL.cart" %>
<%@ MasterType virtualpath="~/Site.Master" %>

<asp:Content runat="server" ID="cart" ContentPlaceHolderID="MainContent">
   <div class="container">
		<div class="row">
			<div class="col-sm-12">
                <h2>Giỏ Hàng</h2>
                <h1><asp:Label ID="TotalProduct" runat="server" Text="Label"></asp:Label></h1>
                <form id="formgiohang" runat="server">
                    <table class="table table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th>Tên sản phẩm</th>
                                <th>Mô tả</th>                                    
                                <th>Giá</th>
                                <th>Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:ListView ID="listcart" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <img src="<%# Eval("Path") %>" alt=""></td>
                                        <td><%# Eval("Name") %></td>
                                        <td><a href="thongtinsp.aspx?id=<%# Eval("Id") %>">Chi tiết</a> </td>
                                        <td><%# Eval("Price") %></td>
                                        <td><span>Còn hàng</span></span></td>
                                        <td>
                                            <div class="input-append">
                                                <asp:Button runat="server" CssClass="btn btn-mini btn-danger" CommandArgument='<%# Eval("Id") %>' Text="X" OnClick="btnDelete_Click" />
                                            </div>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>
                            <tr>
                                <td runat="server" id="total" colspan="5" class="alignR">	</td>
                            </tr>
                        </tbody>
                    </table>
                    <br />
                    <div style="float:right">
                        <a href="trangchu.aspx" class="btn btn-default add-to-cart"><span class="icon-arrow-left"></span>Quay lại trang chủ</a>
                        <asp:Button ID="thanhtoan" runat="server" Text="Thanh Toán" CssClass="btn btn-default add-to-cart" OnClick="thanhtoan_Click" />
                    </div>
                </form>
            </div>
		</div>
   </div>
    <div>
        <asp:Label runat="server" ID="sessionID"></asp:Label>
        <br />
        <asp:Label runat="server" ID="timeaccess"></asp:Label>
    </div>
</asp:Content>