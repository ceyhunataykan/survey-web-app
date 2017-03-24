<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Onizleme.aspx.cs" Inherits="Survey.Admin.Anket.Onizleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>
        <asp:Label Text="" runat="server" ID="lblBaslik" /></h2>
    <br />
    <br />
    <asp:Repeater runat="server" ID="rptListe" OnItemDataBound="rptListe_ItemDataBound">
        <ItemTemplate>
            <div class="col-md-12">
                <div class="bg-success" style="height: 50px; padding: 5px; color: dimgray; background-color: lightgray">
                    <asp:Literal runat="server" ID="ltSoruTipi" Text='<%# Eval("Soru_Tipi") %>' Visible="true" />
                    <asp:Literal runat="server" ID="ltSoru_ID" Text='<%# Eval("Soru_ID") %>' Visible="true" />
                    <asp:Literal runat="server" ID="ltDurum" Text='<%# Eval("Soru_Durum") %>'  Visible="true" />
                    <h4>
                        <asp:Label ID="lblSoruBaslik" Text='<%# Eval("Soru_Baslik") %>' runat="server" /> </h4>
                </div>
                <div class="well">
                    <asp:CheckBoxList runat="server" ID="ckbSec" CssClass="checkbox"></asp:CheckBoxList>
                    <asp:RadioButtonList runat="server" ID="rbSec" CssClass="radio" ></asp:RadioButtonList>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:Button Text="Kaydet" ID="btnKaydet" runat="server" OnClick="btnKaydet_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
