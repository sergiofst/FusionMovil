<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Mobile/Mobile.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    <title>FusionMovil</title>
</asp:Content>

<asp:Content ID="Headline1" ContentPlaceHolderID="HeadlineContent" runat="server">
	<h2 class="align-center">Bienvenido</h2>
    <p class="align-center">Seleccione un servicio:</p>
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <ul>
        <li>
            <%: Html.ActionLink("ProtGT", "Index", "ProtGT")%>       
        </li>
    </ul>
</asp:Content>
