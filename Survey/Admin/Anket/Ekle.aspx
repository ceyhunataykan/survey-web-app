<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Ekle.aspx.cs" Inherits="Survey.Admin.Anket.Ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="well">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>Anket Oluştur</legend>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Anket Adı</label>
                            <div class="col-sm-6">
                                <input runat="server" id="txtAnketAdi" name="txtAnketAdi" class="form-control" type="text" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Başlangıç Tarihi</label>
                            <div class="col-sm-6">
                                <input runat="server" id="txtBaslangicTarihi" name="txtBaslangicTarihi" class="form-control" type="date" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Bitiş Tarihi</label>
                            <div class="col-sm-6">
                                <input runat="server" id="txtBitisTarihi" name="txtBitisTarihi" class="form-control" type="date" />
                            </div>
                        </div>
                        <%--<div class="form-group">
                            <label class="col-sm-4 control-label">Anket Kısıtlaması</label>
                            <div class="col-sm-6">
                                <select id="AnketKisitlama" name="AnketKisitlama" class="form-control">
                                    <option value="1">IP Kısıtlaması</option>
                                    <option value="2">Sadece Kayıtlı Kullanıcılar</option>
                                </select>
                            </div>
                        </div>--%>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Durum</label>
                            <div class="col-md-6">
                                <label class="radio-inline" for="radios-0">
                                    <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
                                    Aktif
                                </label>
                                <label class="radio-inline" for="radios-1">
                                    <input type="radio" name="radios" id="radios-1" value="2">
                                    Pasif
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label"></label>
                            <div class="col-md-6">
                                <button runat="server" id="btnVazgec" class="btn btn-primary">Vazgeç</button>
                                <button runat="server" id="btnAnketOlustur" class="btn btn-primary">Oluştur</button>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
