Imports MySql.Data.MySqlClient
Imports ProtGTPortal.DAO
Imports ProtGTPortal.WebReference
Imports System.Diagnostics
Imports log4net


<HandleError()> _
Public Class ProtGTController
    Inherits BaseController


    Private Shared Logger As ILog = log4net.LogManager.GetLogger(GetType(ProtGTController))
    Private Shared isDebugEnabled As Boolean = Logger.IsDebugEnabled
    Private Shared IsErrorEnabled As Boolean = Logger.IsErrorEnabled
    Private Shared IsWarnEnabled As Boolean = Logger.IsWarnEnabled
    Private Shared IsInfoEnabled As Boolean = Logger.IsInfoEnabled


    Function Index() As ActionResult
        Dim daoProtGT As ProtGTDAO = New ProtGTDAO(GetConnectionString)

        ' Busco si tiene suscripcion
        Dim drSuscripcion As DataRow = Nothing
        If isDebugEnabled Then
            Logger.DebugFormat("Buscando suscripcion: {0}", GetTelefono)
        End If
        drSuscripcion = daoProtGT.GetSuscripcionByTelefono(GetTelefono)

        ' Si no existe la suscripcion
        If drSuscripcion Is Nothing Then
            Return View("Alta")
        Else
            If isDebugEnabled Then
                Logger.DebugFormat("Suscripcion encontrada: {0} Estatus: {1}", drSuscripcion("idSuscripcion"), drSuscripcion("Estatus"))
            End If

            ' Si la suscripcion esta cancelada
            If CInt(drSuscripcion("Estatus")) = Constantes.SUSC_BAJA_CANCELADA Then
                Return View("Alta")
            ElseIf CInt(drSuscripcion("Estatus")) = Constantes.SUSC_NUEVA Then
                Return View("Pendiente")
            End If

            ' Si la suscripcion es valida
            Return View("Baja")
        End If

        Return View()
    End Function

    Function DoAlta() As ActionResult
        Dim idSuscripcion As Integer

        Dim daoProtgt As ProtGTDAO = New ProtGTDAO(GetConnectionString)
        Dim drSuscripcion As DataRow = daoProtgt.GetSuscripcionByTelefono(GetTelefono)

        If isDebugEnabled Then
            Logger.DebugFormat("Buscando suscripcion: {0}", GetTelefono)
        End If
        ' Si la suscripcion no existe, la creo
        If drSuscripcion Is Nothing Then
            idSuscripcion = New ProtGTDAO(GetConnectionString).AddSuscripcion(0, IdServicio, GetTelefono, Constantes.SUSC_NUEVA)
            If isDebugEnabled Then
                Logger.DebugFormat("Suscripcion creada: {0} Estatus: {1}", idSuscripcion, Constantes.SUSC_NUEVA)
            End If
        Else
            idSuscripcion = CInt(drSuscripcion("idSuscripcion"))
            If isDebugEnabled Then
                Logger.DebugFormat("Suscripcion encontrada: {0} Estatus: {1}", drSuscripcion("idSuscripcion"), drSuscripcion("Estatus"))
            End If
        End If


        Dim idTransaccion As Integer = New TransaccionesDAO(GetConnectionString).AddTransaccion(IdContenido, idSuscripcion, GetTelefono, TransaccionesDAO.INICIO)
        If isDebugEnabled Then
            Logger.DebugFormat("Efectuando transaccion {0} ...", idTransaccion)
        End If

        Dim reqTransaction As TransactionService.TransactionService = New TransactionService.TransactionService

        Dim urlSuscripcionOK As String = Url.Action("SuscripcionOK", "ProtGT", New With {.id = idSuscripcion}, "http")
        Dim urlSuscripcionCancel As String = Url.Action("SuscripcionCancel", "ProtGT", New With {.id = idSuscripcion}, "http")
        Dim urlSuscripcionError As String = Url.Action("SuscripcionError", "ProtGT", New With {.id = idSuscripcion}, "http")
        Dim urlSuscripcionBaja As String = Url.Action("SuscripcionBaja", "ProtGT", New With {.id = idSuscripcion}, "http")

        If isDebugEnabled Then
            Logger.DebugFormat("URL Suscripcion: {0}", urlSuscripcionOK)
            Logger.DebugFormat("URL SuscripcionCancel: {0}", urlSuscripcionCancel)
            Logger.DebugFormat("URL SuscripcionError: {0}", urlSuscripcionError)
            Logger.DebugFormat("URL SuscripcionBaja: {0}", urlSuscripcionBaja)
        End If

        Dim transResponse As String = reqTransaction.requestTransaction(SIAUser, _
                                            SIAPassword, _
                                            idTransaccion.ToString, _
                                            SrsRatingId, _
                                            GetTelefono, _
                                            IdContenido.ToString, _
                                            ContenidoNombre, _
                                            urlSuscripcionOK, _
                                            urlSuscripcionCancel, _
                                            urlSuscripcionError, _
                                            urlSuscripcionBaja, _
                                            "")
        If isDebugEnabled Then
            Logger.DebugFormat("Transaccion respuesta: {0}", transResponse)
        End If

        ' Verifico la respuesta
        If transResponse.Split("|"c)(0) = "1" Then
            ' La transacción fué registrada exitosamente pero se requiere la aceptación del cargo por parte del usuario final.

            Dim transactionId As Integer = Integer.Parse(transResponse.Split("|"c)(1))
            If isDebugEnabled Then
                Logger.DebugFormat("TransactionId: {0}", transactionId)
            End If

            ' Guardo el transactionid
            If isDebugEnabled Then
                Logger.DebugFormat("Actualizando estatus transaccion: {0} Estatus: {1}", idTransaccion, TransaccionesDAO.INICIO)
            End If
            'Dim resp As Integer = New TransaccionesDAO(GetConnectionString).UpdateTransaccion(idTransaccion, transactionId, TransaccionesDAO.INICIO)

            ' Redirecciono a la pagina de confirmar compra
            Dim urlRedirect As String = String.Format("http://{0}/sia/descarga.jsp?id={1}", SIAHost, transactionId)
            If isDebugEnabled Then
                Logger.DebugFormat("Redirect: {0}", urlRedirect)
            End If
            Me.Response.Redirect(urlRedirect)
        Else
            ' Actualizo la suscripcion a pendiente
            Dim tmp = daoProtgt.UpdateEstatusSuscripcion(idSuscripcion, Constantes.SUSC_PENDIENTE)
            tmp = daoProtgt.AddSuscripcionPendiente(IdServicio, GetTelefono, Constantes.SUSC_PENDIENTE, 1)
            If isDebugEnabled Then
                Logger.DebugFormat("Transaccion enviada a Pendiente: {0}", tmp)
            End If
            ViewData("Mensaje") = "Tu suscripcion esta siendo procesada."
        End If

        Return View()
    End Function

    Function SuscripcionOK(ByVal id As Integer) As ActionResult
        ' Busco la suscripcion
        Dim drSuscripcion As DataRow = New ProtGTDAO(GetConnectionString).GetSuscripcion(id)
        Dim transactionId As String = CStr(drSuscripcion("transactionId"))

        ' Confirmo la transaccion
        Dim statusResponse() As String = (New TransactionService.TransactionService).getStatus(SIAUser, SIAPassword, transactionId).Split("|"c)

        ' si la transaccion fue cobrada
        If statusResponse(0) = "0" And statusResponse(1) = "4" Then
            ' Actualizo el estatus de la transaccion
            'Dim resp As Integer = New TransaccionesDAO(GetConnectionString).UpdateTransaccion(id, TransaccionesDAO.DESCARGADA)
            ' Actualizo la suscripcion
            Dim resp As Integer = New ProtGTDAO(GetConnectionString).UpdateEstatusSuscripcion(id, Constantes.SUSC_COBRADA_ACTIVA)
        Else
            ViewData("Mensaje") = "Hubo un problema al efectuar la operacion"
        End If

        Return View()
    End Function

    Function SuscripcionCancel(ByVal id As Integer) As ActionResult
        ' Busco la suscripcion
        Dim drSuscripcion As DataRow = New ProtGTDAO(GetConnectionString).GetSuscripcion(id)
        Dim transactionId As String = CStr(drSuscripcion("transactionId"))

        ' Confirmo la transaccion
        Dim statusResponse() As String = (New TransactionService.TransactionService).getStatus(SIAUser, SIAPassword, transactionId).Split("|"c)

        ' si la transaccion fue cancelada
        If statusResponse(0) = "0" And statusResponse(1) = "2" Then
            ' Actualizo el estatus de la transaccion
            'Dim resp As Integer = New TransaccionesDAO(GetConnectionString).UpdateTransaccion(id, TransaccionesDAO.CANCELADA)
            ' Actualizo la suscripcion
            Dim resp As Integer = New ProtGTDAO(GetConnectionString).UpdateEstatusSuscripcion(id, Constantes.SUSC_BAJA_CANCELADA)
        Else
            ViewData("Mensaje") = "La suscripcion fue cancelada"
        End If

        Return View()
    End Function

    Function SuscripcionError(ByVal id As Integer) As ActionResult
        ' Busco la suscripcion
        Dim drSuscripcion As DataRow = New ProtGTDAO(GetConnectionString).GetSuscripcion(id)
        Dim transactionId As String = CStr(drSuscripcion("transactionId"))

        ' Confirmo la transaccion
        Dim statusResponse() As String = (New TransactionService.TransactionService).getStatus(SIAUser, SIAPassword, transactionId).Split("|"c)

        ' si la transaccion tuvo un error
        If statusResponse(0) = "-1" And statusResponse(1) = "-4" Then
            ' Actualizo el estatus de la transaccion
            'Dim resp As Integer = New TransaccionesDAO(GetConnectionString).UpdateTransaccion(id, TransaccionesDAO.ERROR)
            ' Actualizo la suscripcion
            Dim resp As Integer = New ProtGTDAO(GetConnectionString).UpdateEstatusSuscripcion(id, Constantes.SUSC_PENDIENTE)
        Else
            ViewData("Mensaje") = "hubo un problema al efectuar la suscripcion"
        End If

        Return View()
    End Function

    Function SuscripcionBaja(ByVal id As Integer) As ActionResult
        ' Busco la suscripcion
        Dim drSuscripcion As DataRow = New ProtGTDAO(GetConnectionString).GetSuscripcion(id)
        Dim transactionId As String = CStr(drSuscripcion("transactionId"))

        ' Confirmo la transaccion
        Dim statusResponse() As String = (New TransactionService.TransactionService).getStatus(SIAUser, SIAPassword, transactionId).Split("|"c)

        ' si la transaccion fue cancelada
        If statusResponse(0) = "0" And statusResponse(1) = "2" Then
            ' Actualizo el estatus de la transaccion
            'Dim resp As Integer = New TransaccionesDAO(GetConnectionString).UpdateTransaccion(id, TransaccionesDAO.CANCELADA)
            ' Actualizo la suscripcion
            Dim resp As Integer = New ProtGTDAO(GetConnectionString).UpdateEstatusSuscripcion(id, Constantes.SUSC_BAJA_CANCELADA)
        Else
            ViewData("Mensaje") = "Hubo un problema al efectuar la suscripcion"
        End If

        Return View()
    End Function

    Function DoBaja() As ActionResult
        Dim drSuscripcion As DataRow = New ProtGTDAO(GetConnectionString).GetSuscripcionByTelefono(GetTelefono)
        Return SuscripcionBaja(CInt(drSuscripcion("idSuscripcion")))
    End Function

    Public Function Clausulas() As ActionResult
        Return View()
    End Function

    Public Function Procedimiento() As ActionResult
        Return View()
    End Function
    Public Function Instrucciones() As ActionResult
        Return View()
    End Function

    Private ReadOnly Property IdContenido As Integer
        Get
            Return Integer.Parse(ConfigurationManager.AppSettings("PROTGT.IdContenido"))
        End Get
    End Property
    Private ReadOnly Property ContenidoNombre As String
        Get
            Return ConfigurationManager.AppSettings("PROTGT.ContenidoNombre")
        End Get
    End Property
    Private ReadOnly Property IdServicio As Integer
        Get
            Return Integer.Parse(ConfigurationManager.AppSettings("PROTGT.IdServicio"))
        End Get
    End Property

    Private ReadOnly Property SrsRatingId As Long
        Get
            Return Long.Parse(ConfigurationManager.AppSettings("PROTGT.SrsRatingId"))
        End Get
    End Property


End Class
