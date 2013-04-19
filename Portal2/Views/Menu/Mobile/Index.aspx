<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Mobile/Mobile.Master" Inherits="System.Web.Mvc.ViewPage" %>

<%@ Import Namespace="Portal2.Helpers" %>

<%@ Import Namespace="System.Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<title>Menu Index</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Index</h2>
    <ul>
        <%
            For Each drMenu As DataRow In CType(ViewData("MenuList"), DataSet).Tables(0).Rows
        %>
        <li>
             <%= Html.MenuLink(drMenu)%>
        </li>
        <%
        Next
        %>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadlineContent" runat="server">
</asp:Content>
