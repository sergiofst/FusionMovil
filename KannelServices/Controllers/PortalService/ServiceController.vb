Imports MySql.Data
Imports MySql.Data.MySqlClient

Namespace KannelServices
    Public Class ServiceController
        Inherits SuperController

        Function Index() As String
            ' Dim respuestaCliente As String
            ' guardar historial

            GuardaHistorial()
            'Se obtiene el Id del historial servira para vincular transacciones que no se realizaron 
            Dim Idhistorial As Integer
            Idhistorial = GetIdhistorial()

            'Dimensionamos las variables
            Dim idservicio, idcontenido, SrsRatingId As Integer
            Dim Contentname, UrOk, UrCancel, UrError, UrUnsusc, msisdn, respuesta, UserIdTransaction As String

            ' buscas servicio kannel manda idservicio --> name
            idservicio = BuscaServicio()

            ' buscar clave contenido y encontrar el idcontenido
            idcontenido = BuscaContenido()

            'Se encuentra el Nombre del contenido a traves del idcontenido
            Contentname = Getcontentname(idcontenido)

            'Se obtiene el SRSratingId con el Idservicio
            SrsRatingId = GetSrsRating(idservicio)

            'Se obtiene la maracacion
            Dim marcacion As String
            marcacion = GetMarcacion()

            'Se obtiene el operador 
            Dim operador As String
            operador = GetOperador()

            'Se Obtienen los Parametros URL
            UrOk = GetURLOk(idcontenido, Contentname, SrsRatingId)
            UrError = GetURLError()
            UrUnsusc = GetURLUnsusc()
            UrCancel = GetURLCancel()

            'Se obtiene el telefono del usuario 
            msisdn = Getmsisdn()

            'Genero la Transaccion del usuario
            UserIdTransaction = GetTransactionid()

            ' transaccion webservicio, se guarda con el servicio de venta
            respuesta = InvokeWebservice(UserIdTransaction, SrsRatingId, msisdn, CStr(idcontenido), Contentname, UrOk, UrCancel, UrError, UrUnsusc)
            'respuesta = "01|666"
            'respuesta = "-4|Limited numbers of suscriptions"

            'SI se recibe un caracter negativo como respuesta se sale de el programa de ejecución

            If respuesta.Substring(0, 1) = "-" Then
                Dim indice As Integer
                Dim insertar As String
                indice = respuesta.IndexOf("|")
                insertar = respuesta.Substring(0, (indice))
                Dim UserID As String
                UserID = CStr(Day(Today)) + CStr(Hour(Today)) + CStr(Minute(Today)) + UserIdTransaction
                '=============================================
                Dim dbConn As MySqlConnection = GetConnection()
                Dim mycommand2 As MySqlCommand = dbConn.CreateCommand
                mycommand2.CommandText = ("INSERT INTO IDpendiente(UserId, RatingId, Msisdn, ContentId, Contentname, Urlok, Urlcancel, Urlerror, Urlunsusc, extraParam, Respuesta, IdHistorial, Fecha) VALUES(@UserId, @RatingId, @Msisdn, @ContentId, @Contentname, @Urlok, @Urlcancel, @Urlerror, @Urlunsusc, @extraParam, @Respuesta, @IdHistorial, now())")
                With mycommand2.Parameters
                    .AddWithValue("@UserId", UserID)
                    '.AddWithValue("@passwd", "movil")
                    .AddWithValue("@RatingId", SrsRatingId)
                    .AddWithValue("@Msisdn", Telefono)
                    .AddWithValue("@ContentId", idservicio)
                    .AddWithValue("@Contentname", Contentname)
                    .AddWithValue("@Urlok", UrOk)
                    .AddWithValue("@Urlcancel", UrCancel)
                    .AddWithValue("@Urlerror", UrError)
                    .AddWithValue("@Urlunsusc", UrUnsusc)
                    .AddWithValue("@extraParam", "")
                    .AddWithValue("@Respuesta", insertar)
                    .AddWithValue("@Idhistorial", Idhistorial)
                End With
                dbConn.Open()
                mycommand2.ExecuteNonQuery()
                dbConn.Close()

                '===============================================
                Exit Function
            End If

            Dim RespuestaWebservice, tid As String

            'GUardo la transaccion la cual puede ser una venta normal de contenido o una suscripcion
            'la variable tid es necesaria para pasar el IDtransaction ala URL que se envia para que el 
            'usuario acepte el cargo, si el usuario le da click, telcel hace el cobro y direcciona 
            'al usuario a la pagina URLOk que nosotros le enviamos en el Webservice de transaccion, una 
            'vez que haga el cobro nosostros nos damos cuenta a travez del web service "GetStatus"
            'Este se invoca en el controldor de cobros, esa pagina podria estar refrescandose cada 10 
            'segundos para saber si los usuarios fueron suscritos y se hizo el cobro, si se hizo el cobro 
            ' el usuario podra empezar a descargar sus creditos ya con la direccion automatica que hace el SIA 
            'a la pagina URLOK la cual va a contener la liga de descarga 
            ' ESO FUE LO QUE ENTENDI DEL ARCHIVO QUE NOS MANDARON DE LA INTEGRACION DEL SIA 
            ' NO SE QUE PIENSES SERGIO, AUN NO ESTA TERMINADO :S
            tid = GuardaVenta(respuesta, UserIdTransaction, msisdn, idservicio, idcontenido, Contentname, marcacion, operador)

            'Aqui se invoca la funcion que me genera la respuesta que se le dara al usuario
            'para que le de click a la liga y suscribirlo
            RespuestaWebservice = SendRespuesta(tid)

            'Se gurada en el historial de salida la respuesta que se genero
            GuardaHistorial(RespuestaWebservice)

            'se la envio al usuario para que acepte el servicio 
            Return RespuestaWebservice
        End Function

    End Class
End Namespace