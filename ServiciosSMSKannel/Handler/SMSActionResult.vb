Imports log4net
Imports ServiciosSMSKannel.Utils

Public Class SMSActionResult
    Inherits ActionResult

    Private Shared Logger As ILog = log4net.LogManager.GetLogger(GetType(SMSActionResult))

    Private m_texto As String

    Public Sub New(ByVal text As String)
        m_texto = text

        If String.IsNullOrEmpty(text) Then
            Throw New ArgumentNullException("text")
        End If
    End Sub

    Public Overrides Sub ExecuteResult(ByVal context As CommandContext)
        Dim sender As KannelSMSSender = New KannelSMSSender()
        Dim telefono As String = context.HttpContext.Request(KannelConstantes.FROM)
        Dim marcacion As String = context.HttpContext.Request(KannelConstantes.TO)
        Dim smsc As String = context.HttpContext.Request(KannelConstantes.SMSC)
        Dim respuesta = sender.Send(marcacion, telefono, m_texto, smsc, context)
        context.HttpContext.Response.Write(respuesta)
    End Sub

End Class
