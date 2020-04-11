<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Survey.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Anket Portal | Kayıt Ol</title>
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
                <div>
                    <p>
                        <span class="badge badge-warning">
                            <asp:Literal runat="server" ID="StatusMessage" />
                        </span>
                    </p>
                    <div style="margin-bottom: 10px">
                        <asp:Label runat="server" AssociatedControlID="UserName">Kullanıcı Adı</asp:Label>
                        <div>
                            <asp:TextBox runat="server" CssClass="form-control" ID="UserName" />
                        </div>
                    </div>
                    <div style="margin-bottom: 10px">
                        <asp:Label runat="server" AssociatedControlID="Password">Parola</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="Password" CssClass="form-control" TextMode="Password" />
                        </div>
                    </div>
                    <div style="margin-bottom: 10px">
                        <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Parola Tekrar</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="ConfirmPassword" CssClass="form-control" TextMode="Password" />
                        </div>
                    </div>
                    <div>
                        <div>
                            <asp:Button runat="server" OnClick="CreateUser_Click" CssClass="btn btn-primary btn-lg btn-block" Text="Kayıt Ol" />
                            <a href="Login.aspx" class="btn btn-block btn-lg btn-danger">Giriş Yap</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
