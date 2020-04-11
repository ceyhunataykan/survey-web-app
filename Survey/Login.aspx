<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Survey.Login" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Anket Portal | Giriş</title>
    <link href="Content/reset.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/login.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
</head>
<body>
    <div>
        <div class="container">
            <div class="logo text-center" style="margin-top: 10px; margin-right: 10px">
                <img src="Content/logo-bg.png" />
            </div>
            <form id="loginbox" runat="server">
                <div class="form-horzontal">
                    <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
                        <p class="text-center">
                            <span class="badge badge-warning">
                                <asp:Literal runat="server" ID="StatusText" />
                            </span>
                        </p>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
                        <div style="margin-bottom: 10px">
                            <asp:Label runat="server" AssociatedControlID="UserName">Kullanıcı Adı</asp:Label>
                            <div>
                                <asp:TextBox runat="server" CssClass="form-control" ID="UserName" />
                            </div>
                        </div>
                        <div style="margin-bottom: 10px">
                            <asp:Label runat="server" AssociatedControlID="Password">Parola</asp:Label>
                            <div>
                                <asp:TextBox runat="server" CssClass="form-control" ID="Password" TextMode="Password" />
                            </div>
                        </div>
                        <div style="margin-bottom: 10px">
                            <div>
                                <asp:Button runat="server" CssClass="btn btn-primary btn-lg btn-block" OnClick="SignIn" Text="Giriş Yap" />
                                <a href="Signup.aspx" class="btn btn-danger btn-lg btn-block">Kayıt Ol</a>
                            </div>
                        </div>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
                        <div>
                            <div>
                                <asp:Button runat="server" CssClass="btn btn-danger" OnClick="SignOut" Text="Çıkış Yap" />
                            </div>
                        </div>
                    </asp:PlaceHolder>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
