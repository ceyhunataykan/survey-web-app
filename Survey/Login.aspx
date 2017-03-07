<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Survey.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AnketP Kullanıcı Portalı Girişi</title>
    <link href="Content/reset.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/login.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <script src="scripts/tabs.js"></script>
    <script>
        $(function () {
            $("#btnGirisTab").click(function () {
                $("#loginbox").show();
                $("#btnKayitTab").show();
                $("#btnGirisTab").hide();
                $("#signupbox").hide();
                return false;
            });
            $("#btnKayitTab").click(function () {
                $("#loginbox").hide();
                $("#btnKayitTab").hide();
                $("#btnGirisTab").show();
                $("#signupbox").show();
                return false;
            });
            $("#btnGir").click(function() {
                var kadi = $("#txtKullanici").val();
                var parola = $("#txtParola").val();
                if (kadi == "" || parola == "") {
                    $("#sonucGiris").html("Boş Bırakmayınız");
                    $("#sonucGiris").removeClass();
                    $("#sonucGiris").addClass("alert alert-danger");
                    return false; 
                };
                return false;
            });

            $("#btnKayit").click(function() {
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
                $("#sonucKayit").html("Kayıt Başarılı");
                $("#sonucKayit").removeClass();
                $("#sonucKayit").addClass("alert alert-success");
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
            <div id="loginbox">
                <div class="form-horizontal">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input runat="server" id="txtKullanici" name="txtKullanici" type="text" placeholder="Kullanıcı Adı" class="form-control input-md" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input runat="server" id="txtParola" name="txtParola" type="password" placeholder="Parola" class="form-control input-md" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <button runat="server" id="btnGir" name="btnGir" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-log-in"></span> Giriş Yap</button>
                            <button id="btnKayitTab" class="btn btn-block btn-danger"><span class="glyphicon glyphicon-edit"></span>Kayıt Ol</button>
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 20px;">
                        <div class="col-sm-12 text-center">
                            <div id="sonucGiris"></div>
                        </div>
                    </div>
                </div>
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
                            <button id="btnKayit" name="btnKayit" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-edit"></span>Kayıt Ol</button>
                            <button id="btnGirisTab" class="btn btn-block btn-danger" style="display: none; height: 50px;"><span class="glyphicon glyphicon-log-in"></span>Giriş Yap</button>
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 20px;">
                        <div class="col-sm-12 text-center">
                            <div id="sonucKayit"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
