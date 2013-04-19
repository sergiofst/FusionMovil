Imports System.Web.Routing
Imports ServiciosSMSKannel.DAO

Public MustInherit Class Command
    Inherits CommandBase

    Public MustOverride Function Execute(ByVal context As CommandContext) As ActionResult

    Protected Overrides Sub ExecuteCore()
        Try
            Dim result As ActionResult = Execute(CommandContext)
            result.ExecuteResult(CommandContext)
        Catch ex As Exception
            Throw New HttpException(501, ex.Message)
        End Try
    End Sub

    Protected ReadOnly Property Handler() As SMSServicesHandler
        Get
            Return CType(HttpContext.Items(Constantes.HANDLER), SMSServicesHandler)
        End Get
    End Property

    Protected ReadOnly Property Servicio() As Servicio
        Get
            Return CType(HttpContext.Items(Constantes.HTTP_SERVICIO), ServiciosSMSKannel.Servicio)
        End Get
    End Property

    Protected ReadOnly Property ServicioClave() As ServicioClave
        Get
            Return CType(HttpContext.Items(Constantes.HTTP_SERVICIO_CLAVE), ServiciosSMSKannel.ServicioClave)
        End Get
    End Property

    Protected Function GetContenidoClave() As ContenidoClave
        Return ContenidoClaveCache.Instance.FindContenidoClave(HttpContext, Handler)
    End Function

    Protected Function GetContenido(ByVal idContenido As Integer) As Contenido
        Dim drContenido As DataRow = New ContenidosDAO(ConnectionString).GetContenido(idContenido)
        Return New Contenido With {.IdContenido = CInt(drContenido("idContenido")), _
                                   .IdServicio = CInt(drContenido("idServicio")), _
                                   .Nombre = CStr(drContenido("Nombre")), _
                                   .Texto = CStr(drContenido("Texto")), _
                                   .Archivo = CStr(drContenido("Archivo")), _
                                   .Estatus = CInt(drContenido("Estatus")), _
                                   .Icono = CStr(drContenido("Icono")), _
                                   .IconoDestacado = CStr(drContenido("IconoDestacado"))}
    End Function

    Protected Function SMS(ByVal text As String) As ActionResult
        Return New SMSActionResult(text)
    End Function

    Protected Function SMS(ByVal text As String, ByVal text2 As String) As ActionResult
        Dim multi As MultiSMSActionResult = New MultiSMSActionResult()
        multi.Mensajes.Add(SMS(text))
        multi.Mensajes.Add(SMS(text2))
        Return multi
    End Function

    Public ReadOnly Property HttpContext() As HttpContextBase
        Get
            Return CType(IIf(CommandContext Is Nothing, Nothing, CommandContext.HttpContext), HttpContextBase)
        End Get
    End Property

    Public ReadOnly Property Server() As HttpServerUtilityBase
        Get
            Return CType(IIf(HttpContext Is Nothing, Nothing, HttpContext.Server), HttpServerUtilityBase)
        End Get
    End Property

    Public ReadOnly Property Session() As HttpSessionStateBase
        Get
            Return CType(IIf(HttpContext Is Nothing, Nothing, HttpContext.Session), HttpSessionStateBase)
        End Get
    End Property

    Public ReadOnly Property Request() As HttpRequestBase
        Get
            Return CType(IIf(HttpContext Is Nothing, Nothing, HttpContext.Request), HttpRequestBase)
        End Get
    End Property

    Public ReadOnly Property Response() As HttpResponseBase
        Get
            Return CType(IIf(HttpContext Is Nothing, Nothing, HttpContext.Response), HttpResponseBase)
        End Get
    End Property

End Class
