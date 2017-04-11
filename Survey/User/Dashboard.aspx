<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Survey.User.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-top: 25px">
        <div class="col-sm-12">
            <div class="panel">
                <div class="panel-heading" style="color: lightgray; background-color: dimgray;">
                    <h3>Anket Listesi</h3>
                </div>
                <div class="panel-body">
                    <asp:ListView runat="server" ID="lvAnketListe">
                        <LayoutTemplate>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Anket Adı</th>
                                            <th class="text-center">Başlangıç Tarihi</th>
                                            <th class="text-center">Bitiş Tarihi</th>
                                            <th class="text-center">Soru Sayısı</th>
                                            <th class="text-center">Durum</th>
                                            <th class="text-center">İşlemler</th>
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
                                <td><a href="Soru/Liste.aspx?anket-id=<%# Eval("Anket_ID") %>" style="color:dimgray; font-size:12px; font-weight:bold"><%# Eval("Anket_Adi") %></a></td>
                                <td class="text-center"><%# Eval("basTarih","{0:d}") %></td>
                                <td class="text-center"><%# Eval("bitTarih","{0:d}") %></td>
                                <td class="text-center"><%# Eval("Soru_Sayi") %></td>
                                <%# (bool)Eval("Anket_Durum")==true ? "<td class="+ "\"text-center\""+"><span class="+ "\"label label-success\""+">Aktif</span></td>" : "<td class="+ "\"text-center\""+"><span class="+"\"label label-danger\""+">Pasif</span></td>" %>
                                <td class="text-center">
                                    <a href="Anket.aspx?anket-id=<%# Eval("Anket_ID") %>" class="btn btn-primary" data-toggle="tooltip" data-placement="top" title="Önizleme">Anket Doldur</a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
                <div class="panel-footer text-center" style="color: #444444">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li>
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
