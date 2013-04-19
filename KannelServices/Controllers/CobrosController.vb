Imports MySql.Data.MySqlClient
Imports MySql.Data
Imports KannelServices.WTransaction.TransactionService
Imports System.IO
Imports System.Timers

Namespace KannelServices
    Public Class CobrosController
        Inherits System.Web.Mvc.Controller

        '
        ' GET: /Cobros
        'Todas las suscripciones o Ventas que se generan entran a una tabla de suscripciones, si la transaccion 
        'no se realizo por motivos como fallos en el sistema del SIA esos podrian ser mandados a otra tabla
        ' la tabla de suscripciones controla que usuarios estan activos enviando cada registro que encuentre 
        'en el estado de Pendiente 'P',tambien maneja el numero de reintentos que han pasado antes de suscribir a un usuario
        ' estos reitnentos  podrian ser controlados por una variable de fecha, se 
        ' manda llamar al WebService y si el webservice envia una respuesta satisfactoria
        ' en este caso 0|4, cambiamos el status a 'A' y pasamos el numero de reintentos a 0
        ' cuando se necesite volver a renovar habra que enviar los parametros nuevamente y controlar los reintentos

        Function Index() As String
            'Response.Redirect(
            Dim Constr As String = ConfigurationManager.ConnectionStrings("fusion").ConnectionString
            Dim status As WTransaction.TransactionService = New WTransaction.TransactionService
            'Conexion le paso de parametros, la cadena de conexion del constructor, ahora se va conectar a la base de datos SQL
            Dim dbconn As MySqlConnection = New MySqlConnection(Constr)
            Dim query As String
            Dim mycommand As MySqlCommand = dbconn.CreateCommand
            Dim Respuestawebservice As String
            query = "SELECT * FROM Suscripciones WHERE Estado='P' AND IdSuscripcion > 106 "
            dbconn.Open()
            Dim ds As DataSet = New DataSet()
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(query, dbconn)
            da.Fill(ds, "0")
            Dim idt As String
            Dim idSusc As Integer
            For Each dr As DataRow In ds.Tables(0).Rows
                'Rating = idservicio
                'If idservicio.ToString.IndexOf(CStr(dr("IdServicio"))) > -1 Then
                ' IdRating = CInt(dr("RatingId"))
                ' End If
                idt = CStr(dr("Idtransaction"))
                idSusc = CInt(dr("IdSuscripcion"))

                Respuestawebservice = status.getStatus("fusion", "movil", idt)
                'Respuestawebservice = "0|4"
                'SE verifica en el webservice que se haya cobrado la transaccion, si regresa 4 
                'Cambios el estado de nuestra Tabla Suscripcion de P(pendiente) a A(activo) 

                If Respuestawebservice = "0|1" Then
                    mycommand.CommandText = "UPDATE Suscripciones SET Estado='A', intentos= 0"
                    'mycommand.Parameters.AddWithValue("@IDSuscripcion", idSusc)
                    mycommand.ExecuteNonQuery()
                    idSusc = 0
                End If
            Next
            'Dim dias As System.Web.UI.Timer = New System.Web.UI.Timer()
            'dias.Interval = 5000
            Return "Checar base de datos"
        End Function
       
    'Private Shared Sub OnChange(ByVal sender As Object, ByVal e As FileSystemEventArgs)
    '   TimeValue(CStr(Today)) - TimeValue(CStr(Today))

    'End Sub
    End Class

End Namespace

