<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="Survey.Admin.Hesap.Email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="well">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>Email Değiştir</legend>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Mevcut Email</label>
                            <div class="col-sm-6">
                                <input runat="server" id="txtMevcutEmail" name="txtMevcutEmail" class="form-control" type="text" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Yeni Email</label>
                            <div class="col-sm-6">
                                <input runat="server" id="txtYeniEmail" name="txtYeniEmail" class="form-control" type="text" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Yeni Email Tekrar</label>
                            <div class="col-sm-6">
                                <input runat="server" id="txtYeniEmailTek" name="txtYeniEmailTek" class="form-control" type="text" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label"></label>
                            <div class="col-md-6">
                                <asp:Button Text="Vazgeç" ID="btnVazgec" CssClass="btn btn-danger btn-lg" OnClick="btnVazgec_Click" runat="server" />
                                <asp:Button Text="Değiştir" ID="btnDegistir" CssClass="btn btn-success btn-lg" OnClick="btnDegistir_Click" runat="server" />
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <label class="col-sm-4 control-label"></label>
                            <asp:Label ID="sonuc" Text="" runat="server" />
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script>
        $(function () {
            $("#txtMevcutEmail").keyup(function () {
                var txtMevcutEmail = $("#txtMevcutEmail").val();
                if (mailDonen) {  // Fonksiyondan true ya da false ; dönen değere göre işlem yapıyoruz.
                    $("#sonuc").html("Mail Formatı Uygun");
                    $("#sonuc").removeClass();
                    $("#sonuc").addClass("alert alert-success");
                } else {
                    $("#sonuc").html("Mail Formatı Uygun Değil");
                    $("#sonuc").removeClass();
                    $("#sonuc").addClass("alert alert-danger");
                }
            });
            $("#txtYeniEmail").keyup(function () {
                var txtMevcutEmail = $("#txtYeniEmail").val();
                if (mailDonen) {  // Fonksiyondan true ya da false ; dönen değere göre işlem yapıyoruz.
                    $("#sonuc").html("Mail Formatı Uygun");
                    $("#sonuc").removeClass();
                    $("#sonuc").addClass("alert alert-success");
                } else {
                    $("#sonuc").html("Mail Formatı Uygun Değil");
                    $("#sonuc").removeClass();
                    $("#sonuc").addClass("alert alert-danger");
                }
            });
            $("#txtYeniEmailTek").keyup(function () {
                var txtMevcutEmail = $("#txtYeniEmailTek").val();
                if (mailDonen) {  // Fonksiyondan true ya da false ; dönen değere göre işlem yapıyoruz.
                    $("#sonuc").html("Mail Formatı Uygun");
                    $("#sonuc").removeClass();
                    $("#sonuc").addClass("alert alert-success");
                } else {
                    $("#sonuc").html("Mail Formatı Uygun Değil");
                    $("#sonuc").removeClass();
                    $("#sonuc").addClass("alert alert-danger");
                }
            });
            function checkEmail(email) {
                var filter = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
                if (!filter.test(email)) {
                    return false;
                }
                else {
                    return true;
                }
            }
        });
    </script>
</asp:Content>
