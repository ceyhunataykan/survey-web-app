<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Liste.aspx.cs" Inherits="Survey.Admin.Anket.Liste" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <a href="Ekle.aspx" id="btnAnketEkle" class="btn btn-info btn-block" style="height: 50px; font-size: 16px; font-weight: 500; font-family: 'Roboto', sans-serif;"><i class="fa fa-check-square"></i>&nbsp;&nbsp;Yeni Anket Oluştur</a>
        </div>
    </div>
    <div class="row" style="margin-top: 15px">
        <div class="col-sm-12">
            <div class="panel">
                <div class="panel-heading" style="color: white; background-color: dimgray;">
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
                                            <th class="text-center">Araçlar</th>
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
                                    <a href="Soru/Liste.aspx?anket-id=<%# Eval("Anket_ID") %>" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Soru Ekle">Sorular</a>
                                    <a href="Onizleme.aspx?anket-id=<%# Eval("Anket_ID") %>" class="btn btn-xs btn-primary" data-toggle="tooltip" data-placement="top" title="Önizleme">Önizleme</a>
                                    <a href="qrkod.aspx?anket-id=<%# Eval("Anket_ID") %>" class="btn btn-xs btn-primary" data-toggle="tooltip" data-placement="top" title="QR Kod Oluştur">QR Kod</a>
                                    <a href="#" class="btn btn-xs btn-primary" data-toggle="tooltip" data-placement="top" title="Rapor">Analiz</a>
                                </td>
                                <td class="text-center"> 
                                    <a href="Guncelle.aspx?anket-id=<%# Eval("Anket_ID") %>" class="btn btn-xs btn-info" data-toggle="tooltip" data-placement="top" title="Düzenle">Düzenle</a>
                                    <asp:Button ID="btnSil" Text="Sil" CssClass="btn btn-xs btn-danger" data-toggle="tooltip" data-placement="top" title="Sil" CommandArgument='<%# Eval("Anket_ID") %>' CommandName="Sil" OnCommand="btnSil_Command" runat="server" />
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
