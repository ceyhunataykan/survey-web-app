<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Liste.aspx.cs" Inherits="Survey.Admin.Anket.Soru.Secenek.Liste" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row well">
        <div class="col-md-12">
            <div class="form-horizontal">
                <fieldset>
                    <legend>Seçenek Ekle</legend>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtSecenek" CssClass="form-control" />
                        </div>
                        <div class="col-md-2">
                            <asp:Button Text="Ekle" ID="btnEkle" CssClass="btn btn-success" OnClick="btnEkle_Click" runat="server" />
                            <asp:Button Text="Vazgeç" ID="btnIptal" CssClass="btn btn-danger" OnClick="btnIptal_Click" runat="server" />
                        </div>
                    </div>
                    <br />
                    <div class="form-group">
                        <div class="col-md-6">
                            <asp:Label Text="" ID="Mesaj" runat="server" />
                        </div>
                    </div>
                    <br />
                </fieldset>
            </div>
        </div>
        <div class="col-md-12">
            <div class="panel panel-warning">
                <div class="panel-heading" style="color: lightgray; background-color: dimgray;">
                    <h5>Seçenekler</h5>
                </div>
                <div class="panel-body">
                    <asp:ListView runat="server" ID="lvSecenekListe">
                        <LayoutTemplate>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Seçenek Adı</th>
                                            <th>İşlemler</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                                    </tbody>
                                </table>
                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("Secenek_Adi") %></td>
                                <td>
                                    <asp:Button ID="btnSil" Text="Sil" CssClass="btn btn-danger" CommandArgument='<%# Eval("Secenek_ID") %>' OnCommand="btnSil_Command" CommandName="SecenekSil" runat="server" />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
