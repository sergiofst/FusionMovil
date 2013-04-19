Imports System.Data.Common

Public Class SuscripcionesDAO
    Inherits BaseDAO


    Public Sub New(ByVal connStr As ConnectionStringSettings)
        MyBase.New(connStr)
    End Sub

    Public Function AddSuscripcion(ByVal transactionId As Integer, ByVal idPortal As Integer, ByVal telefono As String, ByVal fechaRenovacion As Date, ByVal estatus As Integer) As Integer
        Dim cmd As DbCommand = CreateCommand()
        Dim query As StringBuilder = New StringBuilder
        With query
            .Append("INSERT INTO Suscripciones ")
            .Append("(transactionId, idPortal, Telefono, FechaSuscripcion, FechaRenovacion, Estatus) ")
            .Append("VALUES ")
            .Append("(@transactionId, @idPortal, @Telefono, NOW(), @FechaRenovacion, @Estatus) ")
        End With
        cmd.CommandText = query.ToString
        With cmd.Parameters
            .Add(AddWithValue("@transactionId", transactionId))
            .Add(AddWithValue("@idPortal", idPortal))
            .Add(AddWithValue("@Telefono", telefono))
            .Add(AddWithValue("@FechaRenovacion", fechaRenovacion))
            .Add(AddWithValue("@Estatus", estatus))
        End With
        Return ExecuteNonQueryIdentity(cmd)
    End Function

    Public Function AddSuscripcion(ByVal transactionId As Integer, ByVal idPortal As Integer, ByVal telefono As String, _
    ByVal fechaRenovacion As Date, ByVal estatus As Integer, ByVal IdServicio As Integer, ByVal Creditos As Integer, _
    ByVal Reintentos As Integer, ByVal TipoServicio As Integer, ByVal idContenido As Integer) As Integer
        Dim cmd As DbCommand = CreateCommand()
        Dim query As StringBuilder = New StringBuilder
        With query
            .Append("INSERT INTO Suscripciones ")
            .Append("(transactionId, idPortal, Telefono, FechaSuscripcion, FechaRenovacion, Estatus, IdServicio, Creditos, Reintentos, Tipo, idContenido) ")
            .Append("VALUES ")
            .Append("(@transactionId, @idPortal, @Telefono, NOW(), @FechaRenovacion, @Estatus, @IdServicio, @Creditos, @Reintentos, @Tipo, @idContenido) ")
        End With
        cmd.CommandText = query.ToString
        With cmd.Parameters
            .Add(AddWithValue("@transactionId", transactionId))
            .Add(AddWithValue("@idPortal", idPortal))
            .Add(AddWithValue("@Telefono", telefono))
            .Add(AddWithValue("@FechaRenovacion", fechaRenovacion))
            .Add(AddWithValue("@Estatus", estatus))
            .Add(AddWithValue("@IdServicio", IdServicio))
            .Add(AddWithValue("@Creditos", Creditos))
            .Add(AddWithValue("@Reintentos", Reintentos))
            .Add(AddWithValue("@Tipo", TipoServicio))
            .Add(AddWithValue("@idContenido", idContenido))
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
        Return CInt(ExecuteNonQuery(String.Format("UPDATE Suscripcion SET Estatus = {0} WHERE idSuscripcion = {1}", estatus, idSuscripcion)))
    End Function

    Public Function GetCreditos(ByVal idSuscripcion As Integer) As Integer
        Return ExecuteScalar(String.Format("SELECT Creditos FROM Suscripciones WHERE idSuscripcion = {0}", idSuscripcion))
    End Function

    Public Function UpdateCreditos(ByVal idSuscripcion As Integer, ByVal creditos As Integer) As Integer
        Return CInt(ExecuteNonQuery(String.Format("UPDATE Suscripciones SET Creditos = {0} WHERE idSuscripcion = {1}", creditos, idSuscripcion)))
    End Function


    Public Function UpdateSuscripcion(ByVal IdSuscripcion As Integer, ByVal transactionid As Integer, ByVal estatus As Integer) As Object
        Return ExecuteNonQuery(String.Format("UPDATE Suscripciones SET Estatus = {0}, transactionid = {1} WHERE IdSuscripcion = {2}", estatus, transactionid, IdSuscripcion))
    End Function

    Public Function UpdateSuscripcion(ByVal IdSuscripcion As Integer, ByVal estatus As Integer) As Object
        Return ExecuteNonQuery(String.Format("UPDATE Suscripciones SET Estatus = {0} WHERE IdSuscripcion = {1}", estatus, IdSuscripcion))
    End Function

End Class
