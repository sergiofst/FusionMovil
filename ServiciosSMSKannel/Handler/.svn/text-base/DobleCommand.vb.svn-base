Public Class DobleCommand
    Inherits Command

    Public Overrides Function Execute(ByVal context As CommandContext) As ActionResult
        Dim result As MultiSMSActionResult = New MultiSMSActionResult

        result.Mensajes.Add(SMS("Hola 1"))
        result.Mensajes.Add(SMS("Hola 2"))
        Return result
    End Function
End Class
