Imports ServiciosSMSKannel.DAO

Public Class RandomCommand
    Inherits Command

    Public Overrides Function Execute(ByVal context As CommandContext) As ActionResult
        Dim contenido As Contenido = GetRandomContenido(context)
        Dim idVenta As Integer = AddVenta(contenido, context)
        Return SMS(contenido.Texto)
    End Function

    Private Function GetRandomContenido(ByVal context As CommandContext) As Contenido
        Dim dsResult As DataSet = New ContenidosDAO(context.Controller.ConnectionString).GetContenidosByServicio(Servicio.IdServicio)
        Dim rndm As Random = New Random
        Dim randomIndex As Integer = rndm.Next(dsResult.Tables(0).Rows.Count)
        Dim result As Contenido = New Contenido With {.IdContenido = CInt(dsResult.Tables(0).Rows(0)("IdContenido")), _
                                                      .IdServicio = CInt(dsResult.Tables(0).Rows(0)("IdServicio")), _
                                                      .Nombre = CStr(dsResult.Tables(0).Rows(0)("Nombre")), _
                                                      .Archivo = CStr(dsResult.Tables(0).Rows(0)("Archivo")), _
                                                      .Texto = CStr(dsResult.Tables(0).Rows(0)("Texto")), _
                                                      .Icono = CStr(dsResult.Tables(0).Rows(0)("Icono")), _
                                                      .IconoDestacado = CStr(dsResult.Tables(0).Rows(0)("IconoDestacado")), _
                                                      .Estatus = CInt(dsResult.Tables(0).Rows(0)("Estatus"))}
        Return result
    End Function

    Private Function AddVenta(ByVal cont As Contenido, ByVal context As CommandContext) As Integer
        Dim telefono As String = CStr(context.HttpContext.Request(KannelConstantes.FROM))
        Dim marcacion As String = CStr(context.HttpContext.Request(KannelConstantes.TO))
        Dim smsc As String = CStr(context.HttpContext.Request(KannelConstantes.SMSC))
        Return New VentasDAO(ConnectionString).AddVenta(Servicio.IdServicio, ServicioClave.IdServicioClave, cont.IdContenido, 0, telefono, marcacion, smsc)
    End Function

End Class
