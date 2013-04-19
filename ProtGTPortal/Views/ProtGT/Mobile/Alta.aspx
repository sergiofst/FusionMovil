<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Mobile/Mobile.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<title>ProtGT</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="align-center">
        <img src="~/Content/logo_protgt_240.gif" runat="server" alt="ProtGT"/>
    </p>
    <p class="align-center">¡Asegura ya tu celular!</p>
    <p class="align-center"><%: Html.ActionLink("Registrame", "DoAlta", "ProtGT")%></p>
    <p class="align-center">
        <%: Html.ActionLink("¿Como hago valido el seguro?", "Instrucciones", "ProtGT")%>
    </p>
    <p class="align-center">
        <%: Html.ActionLink("Clausulas", "Clausulas", "ProtGT")%>
    </p>
    <p class="align-center">
        <%: Html.ActionLink("Procedimiento", "Procedimiento", "ProtGT")%>
    </p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadlineContent" runat="server">
</asp:Content>
