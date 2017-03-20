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
            <button runat="server" id="btnAnketOlustur" class="btn btn-primary btn-block" style="height: 50px; font-size: 16px; font-weight: 500; font-family: 'Roboto', sans-serif;"><span class="glyphicon glyphicon-check"></span>&nbsp;&nbsp;Yeni Anket Oluştur</button>
        </div>
    </div>
    <div class="row" style="margin-top: 25px">
        <div class="col-sm-12">
            <div class="panel panel-warning">
                <div class="panel-heading" style="color: #fff; background-color: #e27d7a; border-color: #e27d7a;">
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
                                            <th>Başlangıç Tarihi</th>
                                            <th>Bitiş Tarihi</th>
                                            <th>Katılım</th>
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
                                <td><%# Eval("Anket_Adi") %></td>
                                <td><%# Eval("Anket_Baslangic_Tarih") %></td>
                                <td><%# Eval("Anket_Adi") %></td>
                                <td><%# Eval("Anket_Bitis_Tarih") %></td>
                                <td>
                                    <%# Eval("Anket_Durum") %></div>
                                </td>
                                <td>
                                    <a href="Soru/Liste.aspx?id=<%# Eval("Anket_ID") %>"  class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Sorular"><span class="glyphicon glyphicon-plus"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Anketi Gör"><span class="glyphicon glyphicon-globe"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Rapor"><span class="glyphicon glyphicon-signal"></span></a>
                                    <a href="#" class="btn btn-xs btn-info" data-toggle="tooltip" data-placement="top" title="Düzenle"><span class="glyphicon glyphicon-cog"></span></a>
                                    <a href="#" class="btn btn-xs btn-danger" data-toggle="tooltip" data-placement="top" title="Sil"><span class="glyphicon glyphicon-remove"></span></a>
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
