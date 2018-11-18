<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" MasterPageFile="~/Site.Master" Inherits="BTL.dangky" %>
<%@ MasterType virtualpath="~/Site.Master" %>
<asp:Content runat="server" ID="dangky" ContentPlaceHolderID="MainContent">
    <div class="grid">
        <form id="form1" runat="server" class="form login" onsubmit="return clickDangky();">
            <header class="login__header">
                <h3>Đăng Ký Thông Tin</h3>
            </header>
            <div class="login__body">
                <div class="form__field">
                    <label>Tên Đăng Ký:<span class="red">*</span></label>
                    <asp:TextBox ID="txttendk" placeholder="Tài Khoản" required="required" runat="server"></asp:TextBox>
                    <span id="dk_err" class="err"></span>
                </div>
                <div class="form__field">
                    <label>Mật Khẩu:<span class="red">*</span></label>
                    <asp:TextBox ID="txtPass" placeholder="Mật Khẩu" required="required" runat="server" TextMode="Password"></asp:TextBox>
                    <span id="pass_err" class="err"></span>
                </div>
                <div class="form__field">
                    <label>Xác Nhận Lại Mật Khẩu:<span class="red">*</span></label>
                    <asp:TextBox ID="txtPassXN" placeholder="Xác Nhận Mật Khẩu" required="required" runat="server" TextMode="Password"></asp:TextBox>
                    <span id="passxn_err" class="err"></span>
                </div>
                <div class="form__field">
                    <label>Tên người  Dùng:<span class="red">*</span></label>
                    <asp:TextBox ID="txtngdung" placeholder="Tên Người Dùng" required="required" runat="server"></asp:TextBox>
                    <span id="ng_err" class="err"></span>
                </div>
            </div>
            <footer class="login__footer">
                <asp:Button ID="btndk" runat="server" BorderColor="Black" BorderStyle="Solid" Text="Đăng Ký" OnClick="btndk_Click" />
            </footer>
        </form>
    </div>
    <script type="text/javascript">
        var hoten = document.getElementById("<%= txttendk.ClientID %>");
        var pass = document.getElementById("<%=txtPass.ClientID%>");
        var passxn = document.getElementById("<%=txtPassXN.ClientID%>");
        var ngdung = document.getElementById("<%=txtngdung.ClientID%>");
        function clickDangky() {
            if (validateF()) {
            } else return false;
        }
        function validateF() {
            
            //hoten.value.length < 2;    hoten.value[2] - lấy ký tự thứ 3
            if (hoten.value.length < 2) {
                $('#dk_err').text('vui lòng nhập đầy đủ họ tên');
                return false;
            }
            else {
                $('#dk_err').text('');
            }
            if (pass.value != passxn.value) {
                $('#pass_err').text('Vui lòng nhập lại mật khẩu');
                return false;
            }
            else ('#pass_err').text('');
            return true;
        }
        function chu(char) {
            return ((char >= 'A' && char <= 'Z') || (char >= 'a' && char <= 'z'));
        }
    </script>
</asp:Content>
