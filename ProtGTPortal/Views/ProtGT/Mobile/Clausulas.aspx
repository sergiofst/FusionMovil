<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Mobile/Mobile.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<title>ProtGT</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="align-center">
        <img id="Img1" src="~/Content/logo_protgt_240.gif" runat="server" alt="ProtGT"/>
    </p>
    <ul>Clausula:
        <li>El seguro aplica sobre robo de equipo celular exlusivamente.</li>
        <li>La suma asegurada es de $400 pesos M.N. por equipo. La perdida se repondra con un equipo de dicho valor.</li>
        <li>El seguro es valido por 30 dias naturales posteriores a tu adquisicion.</li>
        <li>El seguro no cubre fundas, pilas, baterias diferentes a las originalmente utilizadas, adornos, arreglos para personalizar el equipo o cualquier accesorios.</li>
        <li>El seguro no cubre cualquier daño o perjicio causado por la perdida o falta de uso.</li>
        <li>Para la validacion y efectividad del seguro es necesario que el equipo haya sido sustraido al usuario a manera de robo con violencia, exeptuando como culpables familiares hasta segundo grado, dependientes economicos y/o civiles del afectado.</li>
    </ul>
    <p>
         <%: Html.ActionLink("Inicio", "Index", "ProtGT")%>
    </p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadlineContent" runat="server">
</asp:Content>
