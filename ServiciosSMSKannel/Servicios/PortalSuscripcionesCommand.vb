Imports ServiciosSMSKannel.DAO
Public Class PortalSuscripcionesCommand
    Inherits Command


    Public Overrides Function Execute(ByVal context As CommandContext) As ActionResult
        Return Nothing
    End Function

    Public Sub Contexto(ByVal Context As HttpContext)
        Return
    End Sub

    Public Sub Procesa(ByVal context As HttpContextBase)
        ' GetContenidoClave(context)
    End Sub

    'Public Function GetContenidoClave(ByVal context As CommandContext) As ContenidoClave
    '    'BUsco la clave del Contenido 
    '    ' Dim servClave As ContenidoClave = FindContenidoClave(HttpContext)

    '    Return Nothing
    'End Function

    'Public Function FindContenidoClave(ByVal httpContext As HttpContextBase) As ServicioClave
    '    ' Return ServiciosClaveCache.Instance.FindServicioClave(httpContext, Me)
    '    Return Nothing
    'End Function

    ' Public Function FindClaveContenido() As 
    Protected ReadOnly Property SIAuser As String
        Get
            Return ConfigurationManager.AppSettings("SIA.user")
        End Get
    End Property

    Protected ReadOnly Property Password As String
        Get
            Return ConfigurationManager.AppSettings("SIA.password")
        End Get
    End Property


    'Public Function InvokeWebservice(ByVal userTransactionId As String, ByVal SrsRatingId As Integer, ByVal msisdn As String, ByVal contentId As String, ByVal contentName As String, ByVal urlOk As String, ByVal urlCancel As String, ByVal urlError As String, ByVal urlUnsusc As String) As String
    '    Dim Webserv As WTransaction.TransactionService = New WTransaction.TransactionService
    '    Dim TransactionId, msis, idcontent, namecontent, Ok, Cancel, UError, Unsusc, temp As String
    '    Dim RatingId As Integer
    '    TransactionId = userTransactionId
    '    RatingId = SrsRatingId
    '    msis = msisdn
    '    idcontent = contentId
    '    namecontent = contentName
    '    Ok = urlOk
    '    Cancel = urlCancel
    '    UError = urlError
    '    Unsusc = urlUnsusc
    '    temp = Webserv.requestTransaction(SIAuser, Password, TransactionId, RatingId, msis, idcontent, namecontent, Ok, Cancel, UError, Unsusc, "")
    '    Return temp
    'End Function


End Class
