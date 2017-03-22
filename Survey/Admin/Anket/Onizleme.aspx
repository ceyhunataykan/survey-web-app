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
                    <h4 id="soru-id=<%# Eval("Soru_ID") %>"><%# Eval("Soru_Baslik") %></h4>
                </div>
<%--                <%if ((int)Eval("Soru_Tipi") == 1)
                    {%>--%>
                <div class="well">
                    <asp:CheckBoxList runat="server" ID="ckbSec">
                    </asp:CheckBoxList>
                </div>
<%--                <%} %>
                <%else if ((int)Eval("Soru_Tipi") == 2)
                    { %>

                <asp:RadioButtonList runat="server" ID="rbSec">
                </asp:RadioButtonList>
                <%} %>--%>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
