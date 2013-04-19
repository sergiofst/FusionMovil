Namespace Helpers
    Public Class ContenidosHelper
        Inherits BaseHelper

        Public Shared Function GetLink(ByVal row As DataRow) As String
            ' Si debe mostrar una liga para contenidos o sub categorias
            Dim url As String = "~/Contenido.aspx/Preview/" & CStr(row("idContenido"))
            Return String.Format("<a href='{0}'>{1}</a>", GetRelativeUrl(url), CStr(row("Nombre")))
        End Function

    End Class
End Namespace

