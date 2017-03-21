<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Onizleme.aspx.cs" Inherits="Survey.Admin.Anket.Onizleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><asp:Label Text="" runat="server" ID="lblBaslik" /></h2>     
    <br />
    <br />
    <asp:Repeater runat="server" ID="rptListe" OnItemDataBound="rptListe_ItemDataBound">
        <ItemTemplate>
            <div class="col-md-12">
                <div class="bg-success" style="height:50px; padding:5px; color: lightgray; background-color: dimgray;">
                    <h4><%# Eval("Soru_Baslik") %></h4>
                </div>
                <div class="well">
                    <asp:Repeater runat="server" ID="rpt2Liste">
                        <ItemTemplate>
                            <asp:CheckBox ForeColor="DimGray" Text='<%# Eval("Secenek_Adi") %>' runat="server" /><br />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
