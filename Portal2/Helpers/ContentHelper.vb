Imports Portal2.DAO

Namespace Helpers
    Public Class ContentHelper
        Inherits BaseHelper

        Public Shared Function GetPreview(ByVal row As DataRow) As String
            Return CStr(row("PreviewFolder"))
        End Function

        Public Shared Function GetLink(ByVal row As DataRow) As String
            Return CStr(row("FileFolder"))
        End Function

    End Class
End Namespace

