<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Mobile/Mobile.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<title>ProtGT</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="align-center">
        <img id="Img1" src="~/Content/logo_protgt_240.gif" runat="server" alt="ProtGT"/>
    </p>
    <ul>¿Como hago valido el seguro?
        <li>Presenta tu ticket de compra de seguro.</li>
        <li>Factura original del equipo en la cual se asocia la tarjeta SIM, el numero telefonico y el equipo activo en plan de recarga / prepago.</li>
        <li>Identificacion oficial (Credencial de Elector IFE o Pasaporte).</li>
        <li>Acta de denuncia de robo ante las autoridades publicas correspondientes.</li>
    </ul>
    <p>
         <%: Html.ActionLink("Inicio", "Index", "ProtGT")%>
    </p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadlineContent" runat="server">
</asp:Content>
