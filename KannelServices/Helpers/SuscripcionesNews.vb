Imports MySql.Data.MySqlClient
Imports System.Text
Imports FusionMovil.Data


Public Class SuscripcionesNews
    Inherits BaseDAO
    Public Const INICIO As Integer = 0
    Public Const PENDIENTE As Integer = 1
    Public Const NUEVA As Integer = 2
    Public Const COBRADA As Integer = 3
    Public Const RENOVADA As Integer = 4
    Public Const [ERROR] As Integer = 5

    Public Sub New(ByVal dbConn As MySqlConnection)
        MyBase.New(dbConn)
    End Sub

    Public Function AddSuscripcion(ByVal idtransaction As String, ByVal Telefono As String, ByVal idservicio As Integer, _
    ByVal creditos As Integer, ByVal Estado As Integer, ByVal Tipo As Integer) As Integer
        Dim query As StringBuilder = New StringBuilder
        With query
            .Append("INSERT INTO Suscripciones (transactionid, Telefono, IdServicio, Creditos, Reintentos,  Estatus, FechaSuscripcion, FechaRenovacion, Tipo) ")
            .Append("VALUES (@Idtransaction, @Telefono, @IdServicio, @Creditos, @Reintentos, @Estado, NOW(), NULL, @Tipo) ")
        End With
        Dim cmd As MySqlCommand = CreateCommand()
        cmd.CommandText = query.ToString
        With cmd.Parameters
            .AddWithValue("@Idtransaction", idtransaction)
            .AddWithValue("@Telefono", Telefono)
            .AddWithValue("@IdServicio", idservicio)
            .AddWithValue("@Creditos", creditos)
            .AddWithValue("@Reintentos", Estado)
            .AddWithValue("@Estado", INICIO)
            .AddWithValue("@Tipo", Tipo)
        End With

        Return ExecuteNonQueryIdentity(cmd)
    End Function

    Public Function UpdateSuscripcion(ByVal IdSuscripcion As Integer, ByVal transactionid As Integer, ByVal estatus As Integer) As Object
        Return ExecuteNonQuery(String.Format("UPDATE Suscripciones SET Estatus = {0}, transactionid = {1} WHERE IdSuscripcion = {2}", estatus, transactionid, IdSuscripcion))
    End Function

    Public Function UpdateSuscripcion(ByVal IdSuscripcion As Integer, ByVal estatus As Integer) As Object
        Return ExecuteNonQuery(String.Format("UPDATE Suscripciones SET Estatus = {0} WHERE IdSuscripcion = {1}", estatus, IdSuscripcion))
    End Function

    Public Function GetSuscription(ByVal IdSuscripcion As Integer) As DataSet
        Return GetDataSet("SELECT IdSuscripcion, transactionid, Telefono, IdServicio, Creditos, Reintentos,  Estado, Fecha, Tipo FROM Suscripciones WHERE IdSuscripcion = " & IdSuscripcion.ToString)
    End Function

    Public Function GetSuscriptionByTransactionId(ByVal transactionId As Integer) As DataSet
        Return GetDataSet("SELECT IdSuscripcion, transactionId, Telefono, IdServicio, Creditos, Reintentos,  Estado, Fecha, Tipo FROM Suscripciones WHERE transactionid = " & transactionId.ToString)
    End Function
End Class
