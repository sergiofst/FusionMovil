Public Class MultiSMSActionResult
    Inherits ActionResult

    Public Mensajes As ArrayList = New ArrayList

    Public Overrides Sub ExecuteResult(ByVal context As CommandContext)
        For Each mensaje As ActionResult In Mensajes
            mensaje.ExecuteResult(context)
        Next
    End Sub


End Class
