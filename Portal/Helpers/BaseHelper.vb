Namespace Helpers
    Public Class BaseHelper

        Protected Shared Function GetRelativeUrl(ByVal url As String) As String
            Return VirtualPathUtility.ToAbsolute(url)
        End Function

        Public Shared Function GetIcono(ByVal row As DataRow) As String
            Dim fileName As String = CStr(row("Icono"))
            Return (String.Format("<img src='{0}' />", GetRelativeUrl(fileName)))
        End Function

    End Class
End Namespace

