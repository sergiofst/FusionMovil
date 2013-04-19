Imports log4net
Imports ServiciosSMSKannel.Utils

Public Class ForwardActionResult
    Inherits ActionResult

    Private Shared Logger As ILog = log4net.LogManager.GetLogger(GetType(ForwardActionResult))

    Private m_from As String
    Private m_to As String
    Private m_text As String
    Private m_smsc As String

    Public Sub New(ByVal from As String, ByVal [to] As String, ByVal text As String, ByVal smsc As String)
        If String.IsNullOrEmpty(from) Then
            Throw New ArgumentNullException("from")
        End If
        If String.IsNullOrEmpty([to]) Then
            Throw New ArgumentNullException("to")
        End If

        m_from = from
        m_to = [to]
        m_text = text
        m_smsc = smsc

    End Sub

    Public Overrides Sub ExecuteResult(ByVal context As CommandContext)
        Dim sender As KannelSMSSender = New KannelSMSSender()

        Dim respuesta = sender.Send(m_from, m_to, m_text, m_smsc, context)

        context.HttpContext.Response.Write(respuesta)
    End Sub
End Class
