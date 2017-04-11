<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="Survey.User.Hesap.Profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <div class="well">
                <h2>Hoşgeldin <b><%= Session["uyeKadi"] %></b></h2>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6 col-md-offset-3">
            <div class="well">
                <div class="form-horizontal">
                    <fieldset>
                        <h4><b>Kullanıcı Bilgileri</b></h4>
                        <table class="table">
                            <tr>
                                <td>E-Posta</td>
                                <td>:</td>
                                <td>ceyhunataykan@gmail.com</td>
                            </tr>
                            <tr>
                                <td>Kullanıcı Adı</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="txtKullaniciAdi" Text="" runat="server" /></td>
                            </tr>
                            <tr>
                                <td>Yetki</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="txtYetki" Text="" runat="server" /></td>
                            </tr>
                            <tr>
                                <td>Kayıt Tarihi</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="txtKayitTarihi" Text="" runat="server" /></td>
                            </tr>
                              <tr>
                                <td></td>
                                <td></td>
                                <td>
                                    <asp:Button ID="btnVazgec" Text="Vazgeç" CssClass="btn btn-danger btn-lg" OnClick="btnVazgec_Click" runat="server" />
                                    <a href="Email.aspx" class="btn btn-primary btn-lg">E-Mail Değişikliği</a>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
