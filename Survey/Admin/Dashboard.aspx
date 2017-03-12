<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Survey.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/morris.css" rel="stylesheet" />
    <script src="../Scripts/morris.js"></script>
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

    <div class="row" style="margin-top: 25px;">
        <div class="col-sm-12">
            <div class="col-sm-4">
                <div class="panel panel-warning">
                    <div class="panel-heading" style="color: #fff; background-color: #e27d7a; border-color: #e27d7a;">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-list-alt fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div>
                                    <h2>187</h2>
                                </div>
                                <div>
                                    <h4>Anket</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="yayin.aspx">
                        <div class="panel-footer" style="color: #444444">
                            <span class="pull-left">Detaylar</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-warning">
                    <div class="panel-heading" style="color: #fff; background-color: #e27d7a; border-color: #e27d7a;">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-comments fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div>
                                    <h2>59</h2>
                                </div>
                                <div>
                                    <h4>Katılımcı</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="#">
                        <div class="panel-footer" style="color: #444444">
                            <span class="pull-left">Detaylar</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-warning">
                    <div class="panel-heading" style="color: #fff; background-color: #e27d7a; border-color: #e27d7a;">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-user fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div>
                                    <h2>76</h2>
                                </div>
                                <div>
                                    <h4>Üyeler</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="uyeler.aspx">
                        <div class="panel-footer" style="color: #444444">
                            <span class="pull-left">Detaylar</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div id="area-example" style="height: 300px;"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
