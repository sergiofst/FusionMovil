Imports MySql.Data.MySqlClient
Imports MySql.Data
Imports KannelServices.WTransaction.TransactionService

Namespace KannelServices
    Public Class SuperController
        Inherits System.Web.Mvc.Controller

        Protected ReadOnly Property SIAuser() As String
            Get
                Return ConfigurationManager.AppSettings("SIA.user")
            End Get
        End Property

        Protected ReadOnly Property Password As String
            Get
                Return ConfigurationManager.AppSettings("SIA.password")
            End Get
        End Property

        Protected ReadOnly Property SIAhost() As String
            Get
                Return ConfigurationManager.AppSettings("SIA.host")
            End Get
        End Property

        Public Function GetConnection() As MySqlConnection
            Dim Constr As String = ConfigurationManager.ConnectionStrings("fusion").ConnectionString
            'Conexion le paso de parametros, la cadena de conexion del constructor, ahora se va conectar a la base de datos SQL
            Return New MySqlConnection(Constr)
        End Function

        Public ReadOnly Property Mensaje As String
            Get
                Return Request.QueryString("mensaje")
            End Get
        End Property

        Public ReadOnly Property Telefono As String
            Get
                Return Request.QueryString("telefono")
            End Get
        End Property

        Public ReadOnly Property smscid As String
            Get
                Return Request.QueryString("smsc-id")
            End Get
        End Property

        Public ReadOnly Property marcacion As String
            Get
                Return Request.QueryString("marcacion")
            End Get
        End Property

        Public ReadOnly Property Hclave As String
            Get
                Return Request.QueryString("Hclave")
            End Get
        End Property
        Public ReadOnly Property Hservicio As String
            Get
                Return Request.QueryString("Hservicio")
            End Get
        End Property

        Public Sub GuardaHistorial()
            Dim dbConn As MySqlConnection = GetConnection()
            Dim mycommand2 As MySqlCommand = dbConn.CreateCommand
            mycommand2.CommandText = ("INSERT INTO Historial(fecha, smscid, marcacion, telefono, mensaje, tipo, Hclave, Hservicio) Values(now(), @smscid, @marcacion, @telefono, @mensaje, 0, @Hclave, @Hservicio)")
            With mycommand2.Parameters
                .AddWithValue("@smscid", smscid)
                .AddWithValue("@marcacion", marcacion)
                .AddWithValue("@telefono", Telefono)
                .AddWithValue("@mensaje", Mensaje)
                .AddWithValue("@Hclave", Hclave)
                .AddWithValue("@Hservicio", Hservicio)
            End With
            dbConn.Open()
            mycommand2.ExecuteNonQuery()
            dbConn.Close()
        End Sub

        Public Function FillDataset(ByVal cmd As MySqlCommand) As DataSet
            Dim dbconn As MySqlConnection = GetConnection()
            dbconn.Open()
            Dim dAdapter As MySqlDataAdapter = New MySqlDataAdapter(cmd)
            Dim result As DataSet = New DataSet
            dAdapter.Fill(result, "0")
            dbconn.Close()
            Return result
        End Function

        Public Function GetIdhistorial() As Integer
            Dim dbconn As MySqlConnection = GetConnection()
            Dim IdHistorial As Integer
            Dim query As String
            query = String.Format("SELECT IdHistorial, telefono FROM historial WHERE telefono = {0}", Telefono)
            dbconn.Open()
            Dim ds As DataSet = New DataSet()
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(query, dbconn)
            da.Fill(ds, "0")
            For Each dr As DataRow In ds.Tables("0").Rows
                IdHistorial = CInt(dr("IdHistorial"))
            Next
            Return IdHistorial
        End Function

        'Protected Function GetDataSet(ByVal query As String, ByVal dbconn As MySqlConnection) As DataSet
        'dbconn.Open()
        'Dim dAdapter As MySqlDataAdapter = New MySqlDataAdapter(Query, dbconn)
        'Dim result As DataSet = New DataSet
        '    dAdapter.Fill(result, "0")
        'dbconn.Close()
        '    Return result
        'End Function

        'Protected Function GetDataSet(ByVal cmd As MySqlCommand, ByVal dbconn As MySqlConnection) As DataSet
        'Dim result As DataSet = New DataSet
        'Dim dAdapter As MySqlDataAdapter = New MySqlDataAdapter(cmd.CommandText, dbconn)
        '    dAdapter.Fill(result, "0")
        '    Return result
        'End Function

        Public Sub GuardaHistorial(ByVal pMensaje As String)
            Dim dbConn As MySqlConnection = GetConnection()
            Dim mycommand2 As MySqlCommand = dbConn.CreateCommand
            mycommand2.CommandText = ("INSERT INTO Historial(fecha, smscid, marcacion, telefono, mensaje, tipo, Hclave, Hservicio, Respuesta) Values(now(), @smscid, @marcacion, @telefono, @mensaje, 0, @Hclave, @Hservicio, @respuesta)")
            With mycommand2.Parameters
                .AddWithValue("@smscid", smscid)
                .AddWithValue("@marcacion", marcacion)
                .AddWithValue("@telefono", Telefono)
                .AddWithValue("@mensaje", Mensaje)
                .AddWithValue("@Hclave", Hclave)
                .AddWithValue("@Hservicio", Hservicio)
                .AddWithValue("@respuesta", pMensaje)
            End With
            dbConn.Open()
            mycommand2.ExecuteNonQuery()
            dbConn.Close()
        End Sub

        Public Function Getmsisdn() As String
            Return Telefono
        End Function

        Public Function GetSrsRating(ByVal idservicio As Integer) As Integer
            Dim dbconn As MySqlConnection = GetConnection()
            Dim query As String
            ' Se inicializa el IdRating en el servicio default
            Dim IdRating As Integer = 1279
            query = "SELECT * FROM servicios"
            dbconn.Open()
            Dim ds As DataSet = New DataSet()
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(query, dbconn)
            da.Fill(ds, "0")
            For Each dr As DataRow In ds.Tables(0).Rows
                If idservicio.ToString.IndexOf(CStr(dr("IdServicio"))) > -1 Then
                    IdRating = CInt(dr("RatingId"))
                End If
            Next
            Return IdRating
        End Function

        Public Function GetMarcacion() As String
            Return marcacion
        End Function

        Public Function GetOperador() As String
            Return smscid
        End Function

        Public Function BuscaServicio() As Integer
            'Dim dbconn As MySqlConnection = GetConnection()
            'Dim mycommand As MySqlCommand = dbconn.CreateCommand
            'Dim idservicio As Integer
            'dbconn.Open()
            'Dim myreader As MySqlDataReader
            '
            'mycommand.CommandText = ("SELECT idservicio FROM Servicios WHERE Nombre = @busqueda")
            'mycommand.Parameters.AddWithValue("@busqueda", Hservicio)
            'myreader = mycommand.ExecuteReader
            'While myreader.Read
            'idservicio = CInt(myreader("IdServicio"))
            'End While
            'dbconn.Close()

            '=======================================2============================================
            'Dim dbconn As MySqlConnection = GetConnection()
            'Dim query As String
            'query = "SELECT * FROM servicioclaves"
            'dbconn.Open()
            'Dim idServicioClave As Integer
            'Dim ds As DataSet = New DataSet()
            'Dim da As MySqlDataAdapter = New MySqlDataAdapter(query, dbconn)
            'da.Fill(ds, "0")
            'Dim mensaje2 As String
            'mensaje2 = Mensaje
            'For Each dr As DataRow In ds.Tables(0).Rows
            'Dim texto As String
            'If mensaje2.ToLower.IndexOf(CStr(dr("Clave"))) > -1 Then
            'idServicioClave = CInt(dr("IdServicio"))
            'End If
            'Next
            Dim dbconn As MySqlConnection = GetConnection()
            Dim query As String
            query = "SELECT * FROM servicios"
            dbconn.Open()
            'Dimensiona la variable que retorna el idservicio, si no encuentra la clave regresa el 
            'servicio default
            Dim idServicio As Integer = 1000
            Dim ds As DataSet = New DataSet()
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(query, dbconn)
            da.Fill(ds, "0")
            Dim Nombre As String
            Nombre = Hservicio
            For Each dr As DataRow In ds.Tables(0).Rows
                If Nombre.ToLower.IndexOf(CStr(dr("Nombre").ToString.ToLower)) > -1 Then
                    idServicio = CInt(dr("IdServicio"))
                End If
            Next
            Return idServicio
        End Function

        Public Function BuscaContenido() As Integer
            Dim dbconn As MySqlConnection = GetConnection()
            Dim query As String
            query = "SELECT * FROM contenidoclaves"
            dbconn.Open()
            'Dimensiona la variable que regresa el Idcontenido, si no encuentra la clave regresa 
            ' el idcontenido del servicio default
            Dim idContenido As Integer = 1000
            Dim ds As DataSet = New DataSet()
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(query, dbconn)
            da.Fill(ds, "0")
            Dim contenido As String = Hclave
            For Each dr As DataRow In ds.Tables(0).Rows
                'Dim texto As String
                If contenido.ToLower.IndexOf(CStr(dr("Clave"))) > -1 Then
                    idContenido = CInt(dr("IdContenido"))
                End If
            Next
            Return idContenido
        End Function

        Public Function Getcontentname(ByVal idcontenido As Integer) As String
            Dim dbconn As MySqlConnection = GetConnection()
            Dim query As String
            Dim Nombre As String
            Nombre = ""
            query = "SELECT * FROM contenidos"
            dbconn.Open()
            Dim ds As DataSet = New DataSet()
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(query, dbconn)
            da.Fill(ds, "0")
            For Each dr As DataRow In ds.Tables(0).Rows
                Dim contenido As Integer
                contenido = idcontenido
                If contenido.ToString.IndexOf(CStr(dr("idContenido"))) > -1 Then
                    Nombre = CStr(dr("Nombre"))
                End If
            Next
            Return Nombre
        End Function

        Public Function GetURLOk(ByVal idcontenido As Integer, ByVal Contentname As String, ByVal SrsRatingId As Integer) As String
            Dim URL, URL2, OkUrl As String
            'URL = "Bienvenido has quedado suscrito al servicio"
            'URL2 = Contentname
            'URL3 = "Descarga tu contenido aqui"
            URL = "http://wap.myportal/Id=idcontenido="
            URL2 = CStr(idcontenido) + "ratingId=" + CStr(SrsRatingId)
            OkUrl = URL + URL2
            Return OkUrl
        End Function

        Public Function GetURLError() As String
            Dim URL As String
            URL = "http://wap.myportal/error.aspx"
            Return URL
        End Function

        Public Function GetURLUnsusc() As String
            Dim URL As String
            URL = "http://wap.myportal/baja.aspx"
            Return URL
        End Function

        Public Function GetURLCancel() As String
            Dim URL As String
            URL = "http://wap.myportal/Cancel.aspx"
            Return URL
        End Function

        Public Function InvokeWebservice(ByVal userTransactionId As String, ByVal SrsRatingId As Integer, ByVal msisdn As String,
  ByVal contentId As String, ByVal contentName As String, ByVal urlOk As String, ByVal urlCancel As String, ByVal urlError As String, ByVal urlUnsusc As String) As String
            Dim Webserv As WTransaction.TransactionService = New WTransaction.TransactionService
            Dim TransactionId, msis, idcontent, namecontent, Ok, Cancel, UError, Unsusc, temp As String
            Dim RatingId As Integer
            TransactionId = userTransactionId
            RatingId = SrsRatingId
            msis = msisdn
            idcontent = contentId
            namecontent = contentName
            Ok = urlOk
            Cancel = urlCancel
            UError = urlError
            Unsusc = urlUnsusc

            temp = Webserv.requestTransaction("fusion", "movil", TransactionId, RatingId, msis, idcontent, namecontent, Ok, Cancel, UError, Unsusc, "")
            'Dim estado As String
            'estado = temp.Substring(0, 1)
            'If estado <> "-" Then
            'Dim id_transaction As String
            'id_transaction = Right(temp, 7).Trim
            'mycommand2.CommandText = String.Format("INSERT INTO respuestas (respuesta, resp2) VALUES ('{0}', '{1}')", temp, id_transaction)
            'mycommand2.ExecuteNonQuery()
            'dbconn.Close()
            'Else
            'mycommand2.CommandText = String.Format("INSERT INTO respuestas (respuesta, resp2) VALUES ('{0}', '{1}')", temp, estado)
            'mycommand2.ExecuteNonQuery()
            'dbconn.Close()
            'End If
            Return temp
        End Function
        Public Function GetTransactionid() As String
            Dim dbconn As MySqlConnection = GetConnection()
            Dim mycommand As MySqlCommand = New MySqlCommand
            mycommand.Connection = dbconn
            Dim myreader As MySqlDataReader
            Dim Id As Integer
            Dim IdTransaction As String

            'Dim ds As DataSet = New DataSet()
            mycommand.CommandText = "SELECT Idhistorial, telefono, Respuesta FROM historial WHERE telefono = @msisdn"
            mycommand.Parameters.AddWithValue("@msisdn", Telefono)
            dbconn.Open()
            myreader = mycommand.ExecuteReader
            While myreader.Read
                Id = CInt(myreader("IdHistorial"))
            End While
            IdTransaction = "Fusion" + CStr(Id)
            'Dim da As MySqlDataAdapter = New MySqlDataAdapter(mycommand.CommandText, dbconn)
            'da.Fill(ds, "0")
            Return IdTransaction
        End Function

        Public Function GuardaVenta(ByVal respuesta As String, ByVal UserIdTransaction As String, ByVal telefono As String, ByVal IdServicio As Integer, ByVal IdContenido As Integer, ByVal NombreContenido As String, ByVal marcacion As String, ByVal operador As String) As String
            Dim temp As String
            Dim dbConn As MySqlConnection = GetConnection()
            Dim mycommand2 As MySqlCommand = dbConn.CreateCommand
            Dim idstatus As Integer
            'Dim palabra As String
            'Dim tamaño As Integer
            Dim indice As Integer
            Dim id_transaction As String = ""
            'palabra = respuesta
            temp = respuesta.Substring(0, 1)
            If temp <> "-" And temp <> "4" Then
                idstatus = 1
                indice = respuesta.IndexOf("|")
                id_transaction = respuesta.Substring((indice + 1), (Len(respuesta) - (indice + 1)))
            End If
            mycommand2.CommandText = ("INSERT INTO Suscripciones(Idtransaction, UserTransactionId, telefono, IdServicio, IdContenido, Marcacion, Operador, Fecha) VALUES(@Idtransaction, @UserIdTransaction, @telefono, @IdServicio, @IdContenido, @marcacion, @operador, now() )")
            With mycommand2.Parameters
                .AddWithValue("@Idtransaction", id_transaction)
                .AddWithValue("@UserIdTransaction", UserIdTransaction)
                .AddWithValue("@telefono", telefono)
                .AddWithValue("@IdServicio", IdServicio)
                .AddWithValue("@IdContenido", IdContenido)
                .AddWithValue("@marcacion", marcacion)
                .AddWithValue("@operador", operador)
            End With
            dbConn.Open()
            mycommand2.ExecuteNonQuery()
            dbConn.Close()
            'Else
            'mycommand2.CommandText = String.Format("INSERT INTO Respuestas(respuesta, resp2) VALUES ('{0}', '{1}')", temp, estado)
            'mycommand2.ExecuteNonQuery()
            'dbConn.Close()
            'End If
            'Dim mycommand2 As MySqlCommand = dbConn.CreateCommand
            'mycommand2.CommandText = ("INSERT INTO Ventas(fecha, smscid, marcacion, telefono, mensaje, tipo, Hclave, Hservicio) Values(now(), @smscid, @marcacion, @telefono, @mensaje, 0, @Hclave, @Hservicio)")
            'With mycommand2.Parameters
            '.AddWithValue("@smscid", smscid)
            '.AddWithValue("@marcacion", marcacion)
            '.AddWithValue("@telefono", telefono)
            '.AddWithValue("@mensaje", Mensaje)
            '.AddWithValue("@Hclave", Hclave)
            '.AddWithValue("@Hservicio", Hservicio)
            'End With
            'dbConn.Open()
            'mycommand2.ExecuteNonQuery()
            'dbConn.Close()
            If idstatus = 1 Then
                Return id_transaction
            End If
            Return Nothing
        End Function

        Protected Function CreateCommannd(ByVal dbconn As MySqlConnection) As MySqlCommand
            Return dbconn.CreateCommand
        End Function

        Public Function SendRespuesta(ByVal tid As String) As String
            Dim EnviarRespuesta As String
            EnviarRespuesta = "Bienvenido al club Fusion Movil Para descargar tu contenido gratis " + " " + "Haz click para descargar" + "http://fusionmovil.com/descarga?id=" + tid
            Return EnviarRespuesta
        End Function

        Public Function GetTipoServicio(ByVal Idservicio As Integer) As DataSet
            Dim dbconn As MySqlConnection = GetConnection()
            dbconn.Open()
            Dim Mycommand As MySqlCommand = CreateCommannd(dbconn)
            Mycommand.CommandText = ("SELECT * FROM servicios WHERE idServicio = @idServicio")
            Mycommand.Parameters.AddWithValue("@Idservicio", Idservicio)
            Dim result As DataSet = FillDataset(Mycommand)
            dbconn.Close()
            Return result
        End Function

        Public Function GetContenidobyIdServicio(ByVal Idservicio As Integer) As DataSet
            Dim dbconn As MySqlConnection = GetConnection()
            dbconn.Open()
            Dim mycommand As MySqlCommand = CreateCommannd(dbconn)
            mycommand.CommandText = ("SELECT * FROM contenidos WHERE idServicio = @idServicio")
            mycommand.Parameters.AddWithValue("@idServicio", Idservicio)
            Dim Ds As DataSet = FillDataset(mycommand)
            dbconn.Close()
            Return Ds
        End Function

    End Class
End Namespace