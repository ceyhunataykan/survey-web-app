<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Liste.aspx.cs" Inherits="Survey.Admin.Anket.Soru.Liste" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
        <div class="col-sm-12">
            <button runat="server" id="btnSoruEkle" class="btn btn-primary" style="height: 50px; font-size: 16px; font-weight: 500; font-family: 'Roboto', sans-serif;"><span class="glyphicon glyphicon-check"></span>&nbsp;&nbsp;Soru Ekle</button>
        </div>
    </div>
    <div class="row" style="margin-top: 25px">
        <div class="col-sm-12">
            <div class="panel panel-warning">
                <div class="panel-heading" style="color: #fff; background-color: #e27d7a; border-color: #e27d7a;">
                    <h3>Soru Listesi</h3>
                </div>
                <div class="panel-body">
                    <asp:ListView runat="server" ID="lvSoruListe">
                        <LayoutTemplate>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Soru Başlığı</th>
                                            <th>Soru Tipi</th>
                                            <th>Oluşturulma Tarihi</th>
                                            <th>Düzenlenme Tarihi</th>
                                            <th>Durum</th>
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
                                <td><%# Eval("Soru_Baslik") %></td>
                                <td><%# Eval("Soru_Tipi") %></td>
                                <td><%# Eval("Soru_Olusturma_Tarih") %></td>
                                <td><%# Eval("Soru_Guncelle_Tarih") %></td>
                                <td>
                                    <%# Eval("Soru_Durum") %></div>
                                </td>
                                <td>
                                    <a href="#" class="btn btn-xs btn-info" data-toggle="tooltip" data-placement="top" title="Düzenle"><span class="glyphicon glyphicon-cog"></span></a>
                                    <a href="#" class="btn btn-xs btn-danger" data-toggle="tooltip" data-placement="top" title="Sil"><span class="glyphicon glyphicon-remove"></span></a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
</asp:Content>
