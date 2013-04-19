Imports MySql.Data.MySqlClient
Imports System.Text


Public Class TransaccionesDAO
    Inherits BaseDAO

    Public Const INICIO As Integer = 0
    Public Const APROBADA As Integer = 1
    Public Const DESCARGADA As Integer = 2
    Public Const CANCELADA As Integer = 3
    Public Const [ERROR] As Integer = 4
    Public Const REGALO As Integer = 5
    Public Const REGALO_DESCARGADO As Integer = 6

    Public Sub New(ByVal dbConn As MySqlConnection)
        MyBase.New(dbConn)
    End Sub

    Public Function AddTransaccion(ByVal idContenido As Integer, ByVal idSuscripcion As Integer, ByVal estatus As Integer) As Integer
        Dim query As StringBuilder = New StringBuilder
        With query
            .Append("INSERT INTO Transacciones (idContenido, transactionId, idSuscripcion,  Estatus, Fecha) ")
            .Append("VALUES (@idContenido, 0, @idSuscripcion, @Estatus, NOW()) ")
        End With
        Dim cmd As MySqlCommand = CreateCommand()
        cmd.CommandText = query.ToString
        With cmd.Parameters
            .AddWithValue("@idContenido", idContenido)
            .AddWithValue("@idSuscripcion", idSuscripcion)
            .AddWithValue("@Estatus", estatus)
        End With
        Return ExecuteNonQueryIdentity(cmd)
    End Function

    Public Function UpdateTransaccion(ByVal idTransaccion As Integer, ByVal transactionid As Integer, ByVal estatus As Integer) As Integer
        Return ExecuteNonQuery(String.Format("UPDATE Transacciones SET Estatus = {0}, transactionid = {1} WHERE idTransaccion = {2}", estatus, transactionid, idTransaccion))
    End Function

    Public Function UpdateTransaccion(ByVal idTransaccion As Integer, ByVal estatus As Integer) As Integer
        Return ExecuteNonQuery(String.Format("UPDATE Transacciones SET Estatus = {0} WHERE idTransaccion = {1}", estatus, idTransaccion))
    End Function

    Public Function GetTransaccion(ByVal idTransaccion As Integer) As DataSet
        Return GetDataSet("SELECT idTransaccion, transactionId, idContenido, Telefono, Estatus FROM Transacciones WHERE idTransaccion = " & idTransaccion.ToString)
    End Function

    Public Function GetTransaccionByTransactionId(ByVal transactionId As Integer) As DataSet
        Return GetDataSet("SELECT idTransaccion, transactionId, idContenido, Telefono, Estatus FROM Transacciones WHERE transactionId = " & transactionId.ToString)
    End Function





End Class
