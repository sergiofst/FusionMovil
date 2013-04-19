Imports FusionMovil.Data
Imports Portal.Results
Imports Portal.TransactionService
Imports Portal.TariffService


Namespace Controllers
    Public Class ContenidoController
        Inherits BaseController

        Public Function List(ByVal id As Integer) As ActionResult
            ViewData("Contenidos") = New ContenidosDAO(CreateConnection).GetContenidosByIdCategoria(id)
            Return View()
        End Function

        ''' <summary>
        ''' Muestra el preview de el contenido
        ''' </summary>
        ''' <param name="id">Id del contenido</param>
        ''' <returns></returns>
        ''' <remarks></remarks>
        Public Function Preview(ByVal id As Integer) As ActionResult
            ' Busco el contenido
            Dim daoContenidos As ContenidosDAO = New ContenidosDAO(CreateConnection)

            Dim dsContenido As DataSet = daoContenidos.GetContenido(id)
            Dim dsContenidoInfo As DataSet = daoContenidos.GetContenidoInfo(id, 1)
            ViewData("ContenidoInfo") = dsContenidoInfo
            ViewData("Contenido") = dsContenido.Tables(0).Rows(0)

            Return View()
        End Function

        ''' <summary>
        ''' Ejecuta la venta del contenido. Reenvia ael SIA para confirmar la compra 
        ''' </summary>
        ''' <param name="id">id del contenido</param>
        ''' <returns></returns>
        ''' <remarks></remarks>
        Public Function Buy(ByVal id As Integer) As ActionResult

            ' Busco el contenido
            Dim dsContenido As DataSet = New ContenidosDAO(CreateConnection).GetContenido(id)

            ' Busco la suscripcion
            Dim idSuscripcion As Integer = CInt(GetSuscripcion()("idSuscripcion"))

            ' Busco el servicio 
            Dim dsServicio As DataSet = New ServiciosDAO(CreateConnection).GetServicio(CInt(dsContenido.Tables(0).Rows(0)("idServicio")))
            Dim srsRatingId As Integer = CInt(dsServicio.Tables(0).Rows(0)("SRSRatingId"))

            ' Valido los creditos
            If Not ValidaCreditos(CInt(dsServicio.Tables(0).Rows(0)("PrecioCreditos"))) Then
                ' Redirecciono a la pagina para comprar mas creditos
                Return Me.RedirectToAction("Index", "Creditos", New With {.id = id})
            End If

            ' Genero el registro de la transaccion
            Dim idTransaccion As Integer = New TransaccionesDAO(CreateConnection).AddTransaccion(id, idSuscripcion, TransaccionesDAO.INICIO)

            ' 1) Solicitud de transaccion
            Dim reqTransaction As TransactionService.TransactionService = New TransactionService.TransactionService

            Debug.WriteLine(Url.Action("Download", "Contenido", New With {.id = idTransaccion}, "http"))

            ' Genero la transaccion
            Dim transResponse As String = reqTransaction.requestTransaction(SIAUser, _
                                              SIAPassword, _
                                              idTransaccion.ToString, _
                                              srsRatingId, _
                                              GetTelefono, _
                                              id.ToString, _
                                              CStr(dsContenido.Tables(0).Rows(0)("Nombre")), _
                                              Url.Action("Download", "Contenido", New With {.id = idTransaccion}, "http"), _
                                              Url.Action("Cancel", "Contenido", New With {.id = idTransaccion}, "http"), _
                                              Url.Action("Error", "Contenido", New With {.id = idTransaccion}, "http"), _
                                              Nothing, _
                                              "")

            ' Verifico la respuesta
            If transResponse.Split("|"c)(0) = "1" Then
                ' La transacción fué registrada exitosamente pero se requiere la aceptación del cargo por parte del usuario final.

                Dim transactionId As Integer = Integer.Parse(transResponse.Split("|"c)(1))

                ' Guardo el transactionid
                Dim resp As Integer = New TransaccionesDAO(CreateConnection).UpdateTransaccion(idTransaccion, transactionId, TransaccionesDAO.INICIO)

                ' Redirecciono a la pagina de confirmar compra
                ' 2) Redireccionamiento
                Me.Response.Redirect(String.Format("http://{0}/sia/descarga.jsp?id={1}", SIAHost, transactionId))
            Else
                ViewData("Mensaje") = "Hubo un problema al efectuar la operacion"
                ' TODO Logger!!!!
            End If

            ' Si paso algo, llega hasta aqui
            Return View()
        End Function

        ''' <summary>
        ''' Descarga el contenido.
        ''' </summary>
        ''' <param name="id">id de la transacion (idTransaccion)</param>
        ''' <returns></returns>
        ''' <remarks></remarks>
        Public Function Download(ByVal id As Integer) As ActionResult

            ' Busco la transaccion
            Dim dsTransaccion As DataSet = New TransaccionesDAO(CreateConnection).GetTransaccion(id)
            Dim transactionId As String = CStr(dsTransaccion.Tables(0).Rows(0)("transactionId"))

            If CInt(dsTransaccion.Tables(0).Rows(0)("Estatus")) <> TransaccionesDAO.DESCARGADA Then
                ' Si la transaccion ya antes habia sido descargada, el cliente volvio a descargar el contenido
                ' si no, le cobro el credito
                CobraCredito(1)
            End If

            ' Confirmo la transaccion
            Dim statusResponse() As String = (New TransactionService.TransactionService).getStatus(SIAUser, SIAPassword, transactionId).Split("|"c)

            ' si la transaccion fue cobrada
            If statusResponse(0) = "0" And statusResponse(1) = "4" Then
                ' Busco el contenido de la transaccion
                Dim dsContenido As DataSet = New ContenidosDAO(CreateConnection).GetContenido(CInt(dsTransaccion.Tables(0).Rows(0)("idContenido")))

                ' Actualizo el estatus
                Dim resp As Integer = New TransaccionesDAO(CreateConnection).UpdateTransaccion(id, TransaccionesDAO.DESCARGADA)

                ' Segun el tipo de servicio es la entrega del archivo
                If CStr(dsContenido.Tables(0).Rows(0)("idServicio")) = ConfigurationManager.AppSettings("Fondos.IdServicio") Then
                    Return New FondoActionResult(CStr(dsContenido.Tables(0).Rows(0)("Archivo")))
                End If
            Else
                ViewData("Mensaje") = "Hubo un problema al efectuar la operacion"
            End If

            Return View()
        End Function

        ''' <summary>
        ''' Recibe al usuario si no acepto la compra del contenido.
        ''' </summary>
        ''' <param name="id">id de la transaccion (idTransaccion)</param>
        ''' <returns></returns>
        ''' <remarks></remarks>
        Public Function Cancel(ByVal id As Integer) As ActionResult
            ' Actualizo el estatus
            Dim resp As Integer = New TransaccionesDAO(CreateConnection).UpdateTransaccion(id, TransaccionesDAO.CANCELADA)

            ' Busco el idContenido
            ' Busco la transaccion
            Dim dsTransaccion As DataSet = New TransaccionesDAO(CreateConnection).GetTransaccion(id)
            Dim idContenido As Integer = CInt(dsTransaccion.Tables(0).Rows(0)("idContenido"))

            ' Mensaje
            ViewData("Mensaje") = "La operacion fue cancelada"

            ' Redirecciono al preview
            Return Me.RedirectToAction("Preview", "Contenido", New With {.id = idContenido})
        End Function

        ''' <summary>
        ''' Recibe al usuario si hubo algun problema con el usuario en el SIA
        ''' </summary>
        ''' <param name="id">id de la transaccion (idTransaccion)</param>
        ''' <returns></returns>
        ''' <remarks></remarks>
        Public Function [Error](ByVal id As Integer) As ActionResult
            ' Actualizo el estatus
            Dim resp As Integer = New TransaccionesDAO(CreateConnection).UpdateTransaccion(id, TransaccionesDAO.ERROR)

            ' Busco el idContenido
            ' Busco la transaccion
            Dim dsTransaccion As DataSet = New TransaccionesDAO(CreateConnection).GetTransaccion(id)
            Dim idContenido As Integer = CInt(dsTransaccion.Tables(0).Rows(0)("idContenido"))

            ' Mensaje
            ViewData("Mensaje") = "Hubo un problema al efectuar la operacion"

            ' Redirecciono al preview
            Return Me.RedirectToAction("Preview", "Contenido", New With {.id = idContenido})
        End Function

        ''' <summary>
        ''' Verfica que el usuario tiene suficientes creditos para comprar el contenido
        ''' </summary>
        ''' <param name="precioCreditos">Precio en creditos del contenido</param>
        ''' <returns></returns>
        ''' <remarks></remarks>
        Private Function ValidaCreditos(ByVal precioCreditos As Integer) As Boolean
            If New SuscripcionesDAO(CreateConnection).GetCreditos(CInt(GetSuscripcion()("idSuscripcion"))) > precioCreditos Then
                Return True
            End If
            Return False
        End Function

        Private Function CobraCredito(ByVal cantidad As Integer) As Integer
            Dim daoSuscripciones As SuscripcionesDAO = New SuscripcionesDAO(CreateConnection)
            Dim creditos As Integer = daoSuscripciones.GetCreditos(CInt(GetSuscripcion()("idSuscripcion")))
            Return daoSuscripciones.UpdateCreditos(CInt(GetSuscripcion()("idSuscripcion")), creditos - cantidad)
        End Function

    End Class
End Namespace

