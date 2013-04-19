Imports MySql.Data.MySqlClient
Imports System.Text


Public Class SuscripcionesDAO
    Inherits BaseDAO

    Public Sub New(ByVal dbConn As MySqlConnection)
        MyBase.New(dbConn)
    End Sub

    Public Function AddSuscripcion(ByVal transactionId As Integer, ByVal idPortal As Integer, ByVal telefono As String, ByVal fechaRenovacion As Date, ByVal estatus As Integer) As Integer
        Dim cmd As MySqlCommand = CreateCommand()
        Dim query As StringBuilder = New StringBuilder
        With query
            .Append("INSERT INTO Suscripciones ")
            .Append("(transactionId, idPortal, Telefono, FechaSuscripcion, FechaRenovacion, Estatus) ")
            .Append("VALUES ")
            .Append("(@transactionId, @idPortal, @Telefono, NOW(), @FechaRenovacion, @Estatus) ")
        End With
        cmd.CommandText = query.ToString
        With cmd.Parameters
            .AddWithValue("@transactionId", transactionId)
            .AddWithValue("@idPortal", idPortal)
            .AddWithValue("@Telefono", telefono)
            .AddWithValue("@FechaRenovacion", FechaRenovacion)
            .AddWithValue("@Estatus", Estatus)
        End With
        Return ExecuteNonQueryIdentity(cmd)
    End Function

    Public Function FindSuscripcion(ByVal idPortal As Integer, ByVal telefono As String) As DataRow
        Dim result As DataSet = GetDataSet(String.Format("SELECT idSuscripcion, transactionId, idPortal, Telefono, FechaSuscripcion, FechaRenovacion, Estatus FROM Suscripciones WHERE idPortal = {0} AND Telefono = {1} ", idPortal, telefono))
        If result.Tables(0).Rows.Count > 0 Then
            Return result.Tables(0).Rows(0)
        End If
        Return Nothing
    End Function

    Public Function GetSuscripcion(ByVal idSuscripcion As Integer) As DataRow
        Dim result As DataSet = GetDataSet(String.Format("SELECT idSuscripcion, transactionId, idPortal, Telefono, FechaSuscripcion, FechaRenovacion, Estatus FROM Suscripciones WHERE idSuscripcion = {0} ", idSuscripcion))
        If result.Tables(0).Rows.Count > 0 Then
            Return result.Tables(0).Rows(0)
        End If
        Return Nothing
    End Function

    Public Function UpdateEstatusSuscripcion(ByVal idSuscripcion As Integer, ByVal estatus As Integer) As Integer
        Return ExecuteNonQuery(String.Format("UPDATE Suscripcion SET Estatus = {0} WHERE idSuscripcion = {1}", estatus, idSuscripcion))
    End Function

    Public Function GetCreditos(ByVal idSuscripcion As Integer) As Integer
        Return ExecuteScalar(String.Format("SELECT Creditos FROM Suscripciones WHERE idSuscripcion = {0}", idSuscripcion))
    End Function

    Public Function UpdateCreditos(ByVal idSuscripcion As Integer, ByVal creditos As Integer) As Integer
        Return ExecuteNonQuery(String.Format("UPDATE Suscripciones SET Creditos = {0} WHERE idSuscripcion = {1}", creditos, idSuscripcion))
    End Function



End Class
