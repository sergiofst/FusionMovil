<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Mobile/Mobile.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<title>ProtGT</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="align-center">
        <img id="Img1" src="~/Content/logo_protgt_240.gif" runat="server" alt="ProtGT"/>
    </p>
    <ul>Procedimiento:
        <li>En caso de robo, comunicate a la linea ABASEGUROS 01-800-832-5320 de lunes a viernes de 9:00 a.m. a 9:00 p.m. y sabado de 9:00 a.m. a 2:00 p.m.</li>
        <li>Sigue las instrucciones de la operadora, quien te informara sobre como hacer valido tu seguro.</li>
        <li>al validar el reclamo se te enviara a tu domicilio registrado, un equipo celular nuevo que asegura qeu siempre estes comunicado.</li>
    </ul>
    <p>
        <%: Html.ActionLink("Inicio", "Index", "ProtGT")%>
    </p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadlineContent" runat="server">
</asp:Content>
