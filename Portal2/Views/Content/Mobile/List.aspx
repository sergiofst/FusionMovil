<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Mobile/Mobile.Master" Inherits="System.Web.Mvc.ViewPage" %>

<%@ Import Namespace="Portal2.Helpers" %>

<%@ Import Namespace="System.Data" %>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<title><%= CType(ViewData("Category"), DataRow)("Name")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%= CType(ViewData("Category"), DataRow)("Name")%></h2>
    <ul>
        <%
            For Each drContent As DataRow In CType(ViewData("ContentList"), DataSet).Tables(0).Rows
        %>
        <li>
             <%= Html.ContentPreview(drContent)%>
             &nbsp;
             <%= Html.ContentLink(drContent)%>
        </li>
        <%
        Next
        %>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadlineContent" runat="server">
</asp:Content>
