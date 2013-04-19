Namespace Helpers
    Public Class BaseHelper

        Protected Shared Function GetRelativeUrl(ByVal url As String) As String
            Return VirtualPathUtility.ToAbsolute(url)
        End Function

    End Class
End Namespace

