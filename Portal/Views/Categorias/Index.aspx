<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<%@ Import Namespace="Portal.Helpers" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <title>Categorias</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <ul>
        <%
            For Each drCategoria As DataRow In CType(ViewData("Categorias"), DataSet).Tables(0).Rows
        %>
        <li>
            <%=CategoriasHelper.GetIcono(drCategoria) %>
            &nbsp;
             <%=CategoriasHelper.GetLink(drCategoria) %>
        </li>
        <%
        Next
        %>
    </ul>
</asp:Content>
