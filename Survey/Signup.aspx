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
    <script>
        $(function(){
            $("#btnKayit").click(function () {
                var kadi = $("#txtKullaniciAdi").val();
                var parola = $("#txtParolaKayit").val();
                var parolaTek = $("#txtParolaKayitTekrar").val();
                var email = $("#txtEmailKayit").val();
                if (kadi == "" || parola == "" || parolaTek == "" || email == "") {
                    $("#sonucKayit").html("Boş Bırakmayınız");
                    $("#sonucKayit").removeClass();
                    $("#sonucKayit").addClass("alert alert-danger");
                    return false;
                };
                return false;
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="logo text-center" style="margin-top: 10px; margin-right: 10px">
                <img src="Content/logo-bg.png" />
            </div>
             <div id="signupbox">
                <div class="form-horizontal">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input runat="server" id="txtKullaniciKayit" name="txtKullaniciKayit" type="text" placeholder="Kullanıcı Adı" class="form-control input-md" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input runat="server" id="txtParolaKayit" name="txtParolaKayit" type="password" placeholder="Parola" class="form-control input-md" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input runat="server" id="txtParolaKayitTekrar" name="txtParolaKayitTekrar" type="password" placeholder="Parola Tekrar" class="form-control input-md" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input runat="server" id="txtEmailKayit" name="txtEmailKayit" type="text" placeholder="E-Posta" class="form-control input-md" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="submit" id="btnKayit" class="btn btn-primary btn-lg btn-block" value="Kayıt Ol" />
                            <a href="Login.aspx" class="btn btn-block btn-lg btn-danger">Giriş Yap</a>
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 20px;">
                        <div class="col-sm-12 text-center">
                            <asp:Label Text="" ID="sonucKayit" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
