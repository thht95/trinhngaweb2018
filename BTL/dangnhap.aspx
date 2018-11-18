<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" MasterPageFile="~/Site.Master" Inherits="BTL.dangnhap" %>
<%@ MasterType virtualpath="~/Site.Master" %>

<asp:Content runat="server" ID="dangnhap" ContentPlaceHolderID="MainContent">
    <div class="grid">
        <form id="form1" runat="server" class="form login">
            <header class="login__header">
                <h3>Đăng Nhập</h3>
            </header>
            <div class="login__body">
                <div class="form__field">
                    <asp:TextBox ID="txtTK" placeholder="Username" required="required" runat="server"></asp:TextBox>
                    <br />
                </div>
                <div class="form__field">
                    <asp:TextBox ID="txtPass" placeholder="password" required="required" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <footer class="login__footer">
                <asp:Button ID="btndangnhap" runat="server" Text="Đăng Nhập" OnClick="btndangnhap_Click" />
            </footer>
        </form>
    </div>
</asp:Content>
