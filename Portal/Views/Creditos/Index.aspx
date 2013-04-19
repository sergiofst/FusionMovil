<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	AddCreditos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>Lo sentimos, ya no tiene creditos suficientes para comprar el contenido.</p>
    <p>¿Desea comprar mas creditos?</p>
    <a href='<%=Me.ResolveUrl("~/Creditos.aspx/Comprar/" & ViewData("idContenido")) %>'>Si</a>
    &nbsp;
    <a href='<%=Me.ResolveUrl("~/Contenido.aspx/Preview/" & ViewData("idContenido")) %>'>No</a>
</asp:Content>
