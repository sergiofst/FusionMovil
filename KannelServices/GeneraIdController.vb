Imports System.Runtime.Remoting.Contexts
Imports MySql.Data
Imports MySql.Data.MySqlClient
Imports System.IO
Imports FusionMovil.Data

Namespace KannelServices
    Public Class GeneraIdController
        Inherits SuperController

        'CONOCER COMO PODEMOS MANDAR UNA TRANSACCION SIN MENSAJE DE USUARIO
        ' GET: /GeneraId
        Public Sub envia(ByVal userTransactionId As String, ByVal SrsRatingId As Integer, ByVal msisdn As String,
  ByVal contentId As String, ByVal contentName As String, ByVal urlOk As String, ByVal urlCancel As String, ByVal urlError As String, ByVal urlUnsusc As String)
            'Dim URL As String
            'URL = "http://localhost:50229/Fondos/index?mensaje=" +

            Response.Redirect("http://localhost:50229/Fondos/index?mensaje=JuegoPacman22&telefono=2216854121&smsc-id=Telcel&Hservicio=Juegos&marcacion=1111&Hclave=JuegoPacman22")

        End Sub


        Function Index() As String
            Dim dbconn As MySqlConnection = GetConnection()
            Dim Daocontenidos As ContenidosDAO = New ContenidosDAO(dbconn)
            Dim buscaregistros As DataSet = Daocontenidos.GetDataSetIDpendiente
            Dim respuesta As String = "c"
            Dim contentName As String = "c"
            For Each dr As DataRow In buscaregistros.Tables("0").Rows
                Dim userTransactionId, msisdn, contentId, urlOk, urlCancel, urlError, urlUnsusc, urlExtra, RespWebserv, Estado As String
                Dim idpendiente, SrsRatingId, Idhistorial As Integer
                Dim fec As Date

                idpendiente = CInt(dr("IDpendiente"))
                userTransactionId = CStr(dr("UserId"))
                SrsRatingId = CInt(dr("RatingId"))
                msisdn = CStr(dr("Msisdn"))
                contentId = CStr(dr("ContentId"))
                contentName = CStr(dr("Contentname"))
                urlOk = CStr(dr("Urlok"))
                urlCancel = CStr(dr("Urlcancel"))
                urlError = CStr(dr("Urlerror"))
                urlUnsusc = CStr(dr("Urlunsusc"))
                urlExtra = CStr(dr("extraParam"))
                RespWebserv = CStr(dr("Respuesta"))
                Estado = CStr(dr("Estado"))
                Idhistorial = CInt(dr("Idhistorial"))
                fec = CDate((dr("Fecha")))

                Select Case RespWebserv
                    Case "-14"
                        Dim dia As Integer
                        Dim hora As Integer
                        dia = fec.Day
                        hora = fec.Hour

                        If (Now.Day - dia >= 1 And Now.Hour > hora) Then
                            respuesta = InvokeWebservice(userTransactionId, SrsRatingId, msisdn, contentId, contentName, urlOk, urlCancel, urlError, urlUnsusc)
                            If respuesta.Substring(0, 1) = "-" Then
                                Dim indice As Integer
                                Dim insertar As String
                                indice = respuesta.IndexOf("|")
                                insertar = respuesta.Substring(0, (indice))
                                Dim UserID As String
                                UserID = CStr(Second(Today)) + CStr(Now.Millisecond) + userTransactionId

                            Else
                                If (Now.Day - fec.Day > 1) Then
                                    Dim mycommand As MySqlCommand = dbconn.CreateCommand

                                End If

                            End If
                        End If



                End Select

                'respuesta = InvokeWebservice(userTransactionId, SrsRatingId, msisdn, contentId, contentName, urlOk, urlCancel, urlError, urlUnsusc)
                respuesta = "01|334d3121"
            Next
            Return contentName
        End Function

    End Class
End Namespace