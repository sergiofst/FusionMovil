<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<%@ Import Namespace="Portal.Helpers" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <title>Contenidos</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <ul>
        <%
            For Each drContenido As DataRow In CType(ViewData("Contenidos"), DataSet).Tables(0).Rows
        %>
        <li>
            <%= ContenidosHelper.GetIcono(drContenido)%>
            &nbsp;
             <%= ContenidosHelper.GetLink(drContenido)%>
        </li>
        <%
        Next
        %>
    </ul>
</asp:Content>
