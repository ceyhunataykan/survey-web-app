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
            <button runat="server" id="btnAnketOlustur" class="btn btn-primary btn-block" style="height: 50px; font-size: 16px; font-weight: 500; font-family: 'Roboto', sans-serif;"><span class="glyphicon glyphicon-check"></span>Yeni Anket Oluştur</button>
        </div>
    </div>
    <div class="row" style="margin-top: 25px">
        <div class="col-sm-12">
            <div class="panel panel-warning">
                <div class="panel-heading" style="color: #fff; background-color: #e27d7a; border-color: #e27d7a;">
                    <h3>Anket Listesi</h3>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Anket Adı</th>
                                <th>Başlangıç Tarihi</th>
                                <th>Bitiş Tarihi</th>
                                <th>Etkinlik</th>
                                <th>Durum</th>
                                <th>İşlemler</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a href="sorular.aspx">Anket 1</a></td>
                                <td>21.10.2016</td>
                                <td>21.11.2016</td>
                                <td>123</td>
                                <td>
                                    <div class="btn btn-xs btn-success">Aktif</div>
                                </td>
                                <td>
                                    <a href="soruekle.aspx" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Soru Ekle"><span class="glyphicon glyphicon-plus"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Üyeleri Gör"><span class="glyphicon glyphicon-user"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Anketi Gör"><span class="glyphicon glyphicon-globe"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Rapor"><span class="glyphicon glyphicon-signal"></span></a>
                                    <a href="#" class="btn btn-xs btn-info" data-toggle="tooltip" data-placement="top" title="Düzenle"><span class="glyphicon glyphicon-cog"></span></a>
                                    <a href="#" class="btn btn-xs btn-danger" data-toggle="tooltip" data-placement="top" title="Sil"><span class="glyphicon glyphicon-remove"></span></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Anket 2</td>
                                <td>22.10.2016</td>
                                <td>22.11.2016</td>
                                <td>45</td>
                                <td>
                                    <div class="btn btn-xs btn-success">Aktif</div>
                                </td>
                                <td>
                                    <a href="soruekle.aspx" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Soru Ekle"><span class="glyphicon glyphicon-plus"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Üyeleri Gör"><span class="glyphicon glyphicon-user"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Anketi Gör"><span class="glyphicon glyphicon-globe"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Rapor"><span class="glyphicon glyphicon-signal"></span></a>
                                    <a href="#" class="btn btn-xs btn-info" data-toggle="tooltip" data-placement="top" title="Düzenle"><span class="glyphicon glyphicon-cog"></span></a>
                                    <a href="#" class="btn btn-xs btn-danger" data-toggle="tooltip" data-placement="top" title="Sil"><span class="glyphicon glyphicon-remove"></span></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Anket 3</td>
                                <td>27.10.2016</td>
                                <td>29.10.2016</td>
                                <td>12</td>
                                <td>
                                    <div class="btn btn-xs btn-danger">Pasif</div>
                                </td>
                                <td>
                                    <a href="soruekle.aspx" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Soru Ekle"><span class="glyphicon glyphicon-plus"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Üyeleri Gör"><span class="glyphicon glyphicon-user"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Anketi Gör"><span class="glyphicon glyphicon-globe"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Rapor"><span class="glyphicon glyphicon-signal"></span></a>
                                    <a href="#" class="btn btn-xs btn-info" data-toggle="tooltip" data-placement="top" title="Düzenle"><span class="glyphicon glyphicon-cog"></span></a>
                                    <a href="#" class="btn btn-xs btn-danger" data-toggle="tooltip" data-placement="top" title="Sil"><span class="glyphicon glyphicon-remove"></span></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Anket 4</td>
                                <td>11.11.2016</td>
                                <td>21.11.2016</td>
                                <td>42</td>
                                <td>
                                    <div class="btn btn-xs btn-success">Aktif</div>
                                </td>
                                <td>
                                    <a href="soruekle.aspx" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Soru Ekle"><span class="glyphicon glyphicon-plus"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Üyeleri Gör"><span class="glyphicon glyphicon-user"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Anketi Gör"><span class="glyphicon glyphicon-globe"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Rapor"><span class="glyphicon glyphicon-signal"></span></a>
                                    <a href="#" class="btn btn-xs btn-info" data-toggle="tooltip" data-placement="top" title="Düzenle"><span class="glyphicon glyphicon-cog"></span></a>
                                    <a href="#" class="btn btn-xs btn-danger" data-toggle="tooltip" data-placement="top" title="Sil"><span class="glyphicon glyphicon-remove"></span></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Anket 5</td>
                                <td>12.11.2016</td>
                                <td>25.11.2016</td>
                                <td>26</td>
                                <td>
                                    <div class="btn btn-xs btn-success">Aktif</div>
                                </td>
                                <td>
                                    <a href="soruekle.aspx" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Soru Ekle"><span class="glyphicon glyphicon-plus"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Üyeleri Gör"><span class="glyphicon glyphicon-user"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Anketi Gör"><span class="glyphicon glyphicon-globe"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Rapor"><span class="glyphicon glyphicon-signal"></span></a>
                                    <a href="#" class="btn btn-xs btn-info" data-toggle="tooltip" data-placement="top" title="Düzenle"><span class="glyphicon glyphicon-cog"></span></a>
                                    <a href="#" class="btn btn-xs btn-danger" data-toggle="tooltip" data-placement="top" title="Sil"><span class="glyphicon glyphicon-remove"></span></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Anket 6</td>
                                <td>21.11.2016</td>
                                <td>21.12.2016</td>
                                <td>19</td>
                                <td>
                                    <div class="btn btn-xs btn-danger">Pasif</div>
                                </td>
                                <td>
                                    <a href="soruekle.aspx" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Soru Ekle"><span class="glyphicon glyphicon-plus"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Üyeleri Gör"><span class="glyphicon glyphicon-user"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Anketi Gör"><span class="glyphicon glyphicon-globe"></span></a>
                                    <a href="#" class="btn btn-xs btn-success" data-toggle="tooltip" data-placement="top" title="Rapor"><span class="glyphicon glyphicon-signal"></span></a>
                                    <a href="#" class="btn btn-xs btn-info" data-toggle="tooltip" data-placement="top" title="Düzenle"><span class="glyphicon glyphicon-cog"></span></a>
                                    <a href="#" class="btn btn-xs btn-danger" data-toggle="tooltip" data-placement="top" title="Sil"><span class="glyphicon glyphicon-remove"></span></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
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
