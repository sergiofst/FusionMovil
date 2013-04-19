<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<%@ Import Namespace="Portal.Helpers" %>
<%@ Import Namespace="System.Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<title>Fondo</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% Dim drContenido As DataRow = CType(ViewData("Contenido"), DataRow)%>
    
    <p>
        <%=ContenidosHelper.GetIcono(drContenido) %>
    </p>
    <p>
        <%= Html.ActionLink("Comprar", "Buy", New With {.Controller = "Contenido", .Action = "Buy", .id = drContenido("idContenido")})%>
    </p>
    <p>
       <strong><%= drContenido("Nombre")%></strong>
    </p>
    <% If ViewData("ContenidoInfo") IsNot Nothing Then%>
        <% For Each drContenidoInfo As DataRow In CType(ViewData("ContenidoInfo"), DataSet).Tables(0).Rows%>
            <p>
                <strong><%= drContenidoInfo("Etiqueta")%>:</strong>
                <br />
                <%= drContenidoInfo("Valor")%>
            </p>
        <% Next%>
    <% End If%>
</asp:Content>
