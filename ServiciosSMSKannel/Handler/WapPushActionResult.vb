Imports log4net
Imports ServiciosSMSKannel.Utils

Public Class WapPushActionResult
    Inherits ActionResult

    Private Shared Logger As ILog = log4net.LogManager.GetLogger(GetType(WapPushActionResult))

    Private m_titulo As String
    Private m_url As String
    Private m_usuario As String
    Private m_password As String

    Public Sub New(ByVal titulo As String, ByVal url As String)
        If String.IsNullOrEmpty(titulo) Then
            Throw New ArgumentNullException("text")
        End If
        If String.IsNullOrEmpty(url) Then
            Throw New ArgumentNullException("url")
        End If

        m_titulo = titulo
        m_url = url
    End Sub

    Public Overrides Sub ExecuteResult(ByVal context As CommandContext)
        Dim sender As KannelSMSSender = New KannelSMSSender()
        Dim telefono As String = context.HttpContext.Request(KannelConstantes.FROM)
        Dim marcacion As String = context.HttpContext.Request(KannelConstantes.TO)
        Dim texto As String = context.HttpContext.Request(KannelConstantes.TEXTO)
        Dim smsc As String = context.HttpContext.Request(KannelConstantes.SMSC)
        Dim respuesta = sender.SendWapPush(Titulo, Url, telefono, marcacion, smsc)
        context.HttpContext.Response.Write(respuesta)
    End Sub

    Public Property Titulo() As String
        Get
            Return m_titulo
        End Get
        Set(ByVal value As String)
            m_titulo = value
        End Set
    End Property
    Public Property Url() As String
        Get
            Return m_url
        End Get
        Set(ByVal value As String)
            m_url = value
        End Set
    End Property
End Class
