Imports System.Web
Imports System.Reflection
Imports System.Web.Routing
Imports ServiciosSMSKannel.DAO

Public Class SMSServicesHandler
    Implements IHttpHandler

    Private Shared MvcVersion As String = GetVersionString()
    Private Shared VersionHeaderName As String = "X-FusionMovilSMSServices-Version"

    Private m_requestContext As RequestContext
    Private m_commandBuilder As CommandBuilder

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim iHttpContext As HttpContextBase = New HttpContextWrapper(context)
        ProcessRequest(iHttpContext)
    End Sub

    Public Sub ProcessRequest(ByVal context As HttpContextBase)
        Dim command As ICommand = Nothing
        Dim factory As ICommandFactory = Nothing
        ProcessRequestInit(context, command, factory)
        Try
            command._Execute(context)
        Finally
            factory.ReleaseCommand(command)
        End Try
    End Sub

    Public Sub ProcessRequestInit(ByVal httpContext As HttpContextBase, ByRef command As ICommand, ByRef factory As ICommandFactory)
        AddVersionHeader(httpContext)

        ' Genero el registro del historial
        Dim idHistorial As Integer = AddHistorial(httpContext)

        ' Busco la clave de servicio
        Dim servClave As ServicioClave = FindServicioClave(httpContext)
        Dim serv As Servicio = GetServicio(servClave.IdServicio)

        If servClave Is Nothing Or serv Is Nothing Then
            Throw New InvalidOperationException(String.Format("No se ha encontrado servicio en el mensaje {0}", httpContext.Request("Text")))
        End If

        httpContext.Items.Add(Constantes.HTTP_SERVICIO, serv)
        httpContext.Items.Add(Constantes.HTTP_SERVICIO_CLAVE, servClave)
        httpContext.Items.Add(Constantes.SMS_ID_HISTORIAL, idHistorial)
        httpContext.Items.Add(Constantes.HANDLER, Me)

        httpContext.Items.Add(Constantes.CONNECTION_STRING, GetConnectionString)

        factory = CommandBuilder.GetCommandFactory()
        command = factory.CreateCommand(httpContext, serv.Clase)

        If command Is Nothing Then
            Throw New InvalidOperationException(String.Format("Factory: {0} Command: {1} not found", factory.GetType(), httpContext.Request("Texto")))
        End If

    End Sub

    Private Function AddHistorial(ByVal httpContext As HttpContextBase) As Integer
        Dim telefono As String = httpContext.Request(KannelConstantes.FROM)
        Dim marcacion As String = httpContext.Request(KannelConstantes.TO)
        Dim texto As String = httpContext.Request(KannelConstantes.TEXTO)
        Dim Smscid As String = httpContext.Request(KannelConstantes.SMSC)

        If String.IsNullOrEmpty(telefono) Then
            Throw New InvalidOperationException(String.Format("El parametro {0} es requerido", KannelConstantes.FROM))
        End If
        If String.IsNullOrEmpty(marcacion) Then
            Throw New InvalidOperationException(String.Format("El parametro {0} es requerido", KannelConstantes.TO))
        End If
        If String.IsNullOrEmpty(texto) Then
            Throw New InvalidOperationException(String.Format("El parametro {0} es requerido", KannelConstantes.TEXTO))
        End If

        Return New HistorialDAO(GetConnectionString).AddHistorial(telefono, marcacion, texto, Constantes.SMS_MO, Smscid)
    End Function

    Public Function FindServicioClave(ByVal httpContext As HttpContextBase) As ServicioClave
        Return ServiciosClaveCache.Instance.FindServicioClave(httpContext, Me)
    End Function

    Public Function GetServicio(ByVal idServicio As Integer) As Servicio
        Dim drServicio As DataRow = New ServiciosDAO(GetConnectionString).GetServicio(idServicio)
        Return New Servicio() With {.IdServicio = CInt(drServicio("idServicio")), .Clase = CStr(drServicio("Clase")), .Nombre = CStr(drServicio("Nombre")), .Estatus = CInt(drServicio("Estatus")), .SRSRatingId = CInt(drServicio("SRSRatingId"))}
    End Function

    Public Function GetConnectionString() As ConnectionStringSettings
        Return ConfigurationManager.ConnectionStrings(Constantes.CONN_STR_KEY)
    End Function

    Private Property CommandBuilder() As CommandBuilder
        Get
            If m_commandBuilder Is Nothing Then
                m_commandBuilder = CommandBuilder.Current
            End If
            Return m_commandBuilder
        End Get
        Set(ByVal value As CommandBuilder)
            m_commandBuilder = value
        End Set
    End Property

    Private Sub AddVersionHeader(ByVal httpContext As HttpContextBase)
        httpContext.Response.AppendHeader(VersionHeaderName, MvcVersion)
    End Sub

    Public Shared Function GetVersionString() As String
        Return New AssemblyName(GetType(SMSServicesHandler).Assembly.FullName).Version.ToString(2)
    End Function

End Class
