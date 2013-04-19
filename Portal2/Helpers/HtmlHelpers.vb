Imports System.Runtime.CompilerServices
Imports Portal2.DAO
Imports System.IO


Namespace Helpers
    Public Module HtmlHelpers
        <Extension()> _
        Public Function MenuLink(ByVal html As HtmlHelper, ByVal row As DataRow) As String
            Dim urlHlp As UrlHelper = New UrlHelper(html.ViewContext.RequestContext)

            If CInt(row("Type")) = MenuDAO.MenuType.MenuItem Then
                Dim url As String = "~/Menu/SubMenu/" & CStr(row("idMenu"))
                Return String.Format("<a href='{0}'>{1}</a>", urlHlp.Content(url), CStr(row("Name")))
            ElseIf CInt(row("Type")) = MenuDAO.MenuType.ContentCategoryList Then
                Dim url As String = "~/Content/List/" & CStr(row("idMenu"))
                Return String.Format("<a href='{0}'>{1}</a>", urlHlp.Content(url), CStr(row("Name")))
            End If

            Return String.Empty
        End Function

        <Extension()> _
        Public Function ContentPreview(ByVal html As HtmlHelper, ByVal row As DataRow) As String
            Dim urlHlp As UrlHelper = New UrlHelper(html.ViewContext.RequestContext)

            If CInt(row("idContentType")) = ContentDAO.ContentType.Fondo Then
                Dim filePath As String = CStr(row("File"))

                ' El archivo viene con el nombre del contenido, para ver el preview hay que concatenarle _preview o _preview_mobile
                Dim tmpName As String = Path.GetFileNameWithoutExtension(filePath)
                If html.ViewContext.RequestContext.HttpContext.Request.Browser.IsMobileDevice Then
                    tmpName = tmpName & "_preview_mobile"
                Else
                    tmpName = tmpName & "_preview"
                End If
                tmpName = tmpName & Path.GetExtension(filePath)
                tmpName = Path.Combine(CStr(row("Path")), tmpName)
                tmpName = urlHlp.Content(tmpName)
                Return String.Format("<img src={0} />", tmpName)
            End If
            Return Nothing
        End Function

        <Extension()> _
        Public Function ContentLink(ByVal html As HtmlHelper, ByVal row As DataRow) As String
            Dim urlHlp As UrlHelper = New UrlHelper(html.ViewContext.RequestContext)

            If CInt(row("idContentType")) = ContentDAO.ContentType.Fondo Then
                Dim url As String = "~/Content/Preview/" & CStr(row("idContent"))
                Return String.Format("<a href={0}>{1}</a>", urlHlp.Content(url), CStr(row("Name")))
            End If
            Return Nothing
        End Function

    End Module
End Namespace


