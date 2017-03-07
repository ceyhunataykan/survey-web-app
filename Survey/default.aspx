<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Survey._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AnketP</title>
    <link href="Content/reset.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <style>
        body {
            background-color: #F0F0F0;
        }
    </style>
    <script>
        $(function () {
            $("#btnFormGonder").click(function () {
                var adsoyad = $("#txtFormAdiSoyadi").html();
                var email = $("#txtFormEposta").html();
                var yorum = $("txtFormMesaj").html();

                if (adsoyad === "" || email === "" || yorum === "") {
                    $("#mesaj").html("İlgili alanları lütfen boş bırakmayın!");
                    return false;
                };
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Container (Menü) -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div style="margin-top: -10px">
                        <a class="navbar-brand" href="default.aspx">
                            <img class="logop" src="Content/logo.png" style="width: 150px" alt="Logo"/>
                        </a>
                    </div>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="#home">Ana Sayfa</a></li>
                        <li><a href="#services">Özellikler</a></li>
                        <li><a href="#about">Hakkımızda</a></li>
                        <li><a href="#contact">İletişim</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="user/kullanicipaneli.aspx"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Kullanıcı Paneli</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="home" class="jumbotron text-center">
            <h1>Anket Portal</h1>
            <p><b>Katılın, Oluşturun ve Anketlerinizi Yönetin!</b></p>
            <p>Basit ve hızlı kullanıcı arayüzümüz ile kendi anketlerinizi oluşturun.</p>
            <div class="col-sm-12 form-inline" style="margin-top: 30px">
                <a href="#" class="btn btn-lg btn-danger" style="font-size: 14px; width: 200px;" data-toggle="modal" data-target="#myModal">Hemen Bize Katılın!</a>
            </div>
        </div>

        <!-- Container (Özellikler) -->
        <div id="services" class="container-fluid text-center">
            <h2></h2>
            <hr />
            <br />
            <div class="row">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-list-alt logo-small"></span>
                    <h4>Anketinizi oluşturun</h4>
                    <p>Basit ve hızlı kullanıcı arayüzümüz ile kendi anketlerinizi oluşturun. Tek gereken tarayıcınız ve bir kullanıcı hesabı!</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-search logo-small"></span>
                    <h4>Anketlerinizi yönetin</h4>
                    <p>Müşterileriniz, çalışanlarınız, arkadaşlarınız ya da web sitenizin ziyaretçilerinden hedef kitleniz olduğunu düşündüğünüz herkese kadar istediğiniz herhangi birinini anketinize dahil edebilme imkanına sahipsiniz. </p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-stats logo-small"></span>
                    <h4>Sonuçları değerlendirin</h4>
                    <p>Katılımcılarınızdan gelen tüm yanıtlar gerçek zamanlı olarak yayınlanır. Her yanıtı teker teker inceleyebilir ya da toplu raporları analiz edebilirsiniz.</p>
                </div>
            </div>
        </div>

        <!-- Container (Hakkımızda) -->
        <div id="about" class="container-fluid text-center" style="background-color: #fff">
            <h2>Hakkımızda</h2>
            <hr />
            <br />
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h4><strong>AnketP Nedir?</strong></h4>
                    <p>AnketP ücretsiz online anket uygulama sitesidir. Kolay kullanılabilen anket oluşturma arayüzleri "Yönet ve kontrol et" yapısı üzerüne kurulmuştur.</p>
                    <br />
                    <h4><strong>AnketP ile neler yapabilirsiniz?</strong></h4>
                    <p>AnketP'yi hertürlü  araştırmanızda kullanabilirsiniz. Müşteri eğilimlerini ölçebilirsiniz. Çalışanlarınızdan geri bildirim alabilirsiniz. Piyasa araştırmaları yapabilirsiniz. Etkinliklerinizi planlayabilirsiniz. Eğitimciler ve konuşmacılar için mükemmel bir araçtır.Kişisel anketler hazırlayabilirsiniz.</p>
                    <br />
                    <h4><strong>AnketP bunu nasıl yapar?</strong></h4>
                    <p>AnketP ile kısaca üç adımda anket uygulamanızı tamamlayabilirsiniz: Anketlerinizi oluşturun, Katılımcılarınızı yönetin, Sonuçlarınızı analiz edin.</p>
                </div>
            </div>
        </div>

        <!-- Container (iletişim) -->
        <div id="contact" class="container-fluid bg-grey">
            <h2 class="text-center">İletişim</h2>
            <hr />
            <div class="row">
                <div class="col-sm-12">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d797.6211426693244!2d30.656671829211284!3d36.902676998745484!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14c391d7aaf403c3%3A0xe5528f714ece151b!2zS8O8bHTDvHIsIDM4MDUuIFNrLiBObzozMywgMDcwOTAgQmFodMSxbMSxL0tlcGV6L0FudGFseWE!5e0!3m2!1str!2str!4v1480762542358" width="100%" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
                </div>
            </div>
            <hr />
            <br />
            <div class="row">
                <div class="col-sm-4">
                    <p><b>Bizimle 24 saat İletişim Kurabilirsiniz.</b></p>
                    <p><span class="glyphicon glyphicon-map-marker"></span>&nbsp;&nbsp;Antalya, TR</p>
                    <p><span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;90(242)1234567</p>
                    <p><span class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;info@anketp.com</p>
                </div>
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input runat="server" class="form-control" id="txtFormAdiSoyadi" name="txtFormAdSoyad" type="text" placeholder="Ad Soyad" />
                        </div>
                        <div class="col-sm-6 form-group">
                            <input runat="server" class="form-control" id="txtFormEposta" name="txtFormEposta" type="text" placeholder="E-Posta" />
                        </div>
                    </div>
                    <textarea rows="5" runat="server" class="form-control" id="txtFormMesaj" name="txtFormMesaj" type="text" placeholder="Mesaj"></textarea>
                    <br />
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <asp:Button runat="server" ID="btnFormGonder" CssClass="btn btn-default pull-right" Text="Gönder" />
                        </div>
                    </div>
                    <div class="text-center" id="mesaj"></div>
                </div>
            </div>
        </div>
        <footer class="footer" style="background-color: dimgray; height: 150px;">
            <div class="container">
                <p class="text-center" style="color: #fff; margin-top: 75px">Ceyhun Ataykan 2016 Tüm Hakları Saklıdır.</p>
            </div>
        </footer>

        <!-- KAYIT MODAL -->
        <div id="myModal" class="modal fade" role="dialog" style="background-color: black;">
            <div class="modal-dialog">
                <div class="modal-body" style="margin: 0 auto; margin-top: 100px; width: 350px;">
                    <div id="signupbox">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <input id="txtKullaniciKayit" name="txtKullanici" type="text" placeholder="Kullanıcı Adı" class="form-control input-md" required="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <input id="txtParolaKayit" name="txtParola" type="password" placeholder="Parola" class="form-control input-md" required="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <input id="txtParolaTekrar" name="txtParolaTekrar" type="password" placeholder="Parola Tekrar" class="form-control input-md" required="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <input id="txtEmail" name="txtEmail" type="text" placeholder="E-Posta" class="form-control input-md" required="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <div class="checkbox">
                                        <label>
                                            <input id="txtSozlesme" name="txtHatirla" type="checkbox" />
                                            Sözleşmeyi Kabul Ediyorum.</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <button id="txtKayit" name="txtKayit" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-edit"></span>Kayıt Ol</button>
                                    <button id="btnGirisTab" class="btn btn-block btn-danger" style="display: none; height: 50px;"><span class="glyphicon glyphicon-log-in"></span>Giriş Yap</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- MODAL SON -->
    </form>
</body>
</html>
