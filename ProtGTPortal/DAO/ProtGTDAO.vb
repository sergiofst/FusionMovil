Imports MySql.Data.MySqlClient
Imports System.Text
Imports System.Data.Common

Namespace DAO
    Public Class ProtGTDAO
        Inherits BaseDAO

        Private Const DIAS_RENOVACION As Integer = 5

        ' idSuscripcion, transactionId, Telefono, idServicio, Estatus, FechaSuscripcion, FechaRenovacion, idContenido

        Public Sub New(ByVal connStr As ConnectionStringSettings)
            MyBase.New(connStr)
        End Sub

        Public Function GetSuscripcion(ByVal idSuscripcion As Integer) As DataRow
            Dim cmd As DbCommand = CreateCommand()
            cmd.CommandText = "SELECT * FROM suscprotgt WHERE idSuscripcion = @idSuscripcion"
            cmd.Parameters.Add(AddWithValue("@idSuscripcion", idSuscripcion, DbType.Int32))
            Dim result As DataSet = GetDataSet(cmd)
            If result.Tables(0).Rows.Count > 0 Then
                Return result.Tables(0).Rows(0)
            End If
            Return Nothing
        End Function
        Public Function GetSuscripcionByTelefono(ByVal telefono As String) As DataRow
            Dim cmd As DbCommand = CreateCommand()
            cmd.CommandText = "SELECT * FROM suscprotgt WHERE Telefono = @Telefono"
            cmd.Parameters.Add(AddWithValue("@Telefono", telefono, DbType.String))
            Dim result As DataSet = GetDataSet(cmd)
            If result.Tables(0).Rows.Count > 0 Then
                Return result.Tables(0).Rows(0)
            End If
            Return Nothing
        End Function

        Public Function AddSuscripcion(ByVal transactionId As Integer, ByVal idServicio As Integer, ByVal telefono As String, ByVal estatus As Integer) As Integer
            Dim cmd As DbCommand = CreateCommand()
            Dim query As StringBuilder = New StringBuilder
            With query
                .Append("INSERT INTO suscprotgt ")
                .Append("(transactionId, idServicio, Telefono, FechaSuscripcion, FechaRenovacion, Estatus) ")
                .Append("VALUES ")
                .Append("(@transactionId, @idServicio, @Telefono, @FechaSuscripcion, @FechaRenovacion, @Estatus) ")
            End With
            cmd.CommandText = query.ToString
            With cmd.Parameters
                .Add(AddWithValue("@transactionId", transactionId, DbType.Int32))
                .Add(AddWithValue("@Telefono", telefono, DbType.String))
                .Add(AddWithValue("@FechaSuscripcion", Date.Now, DbType.DateTime))
                .Add(AddWithValue("@FechaRenovacion", Date.Now.AddDays(DIAS_RENOVACION), DbType.Date))
                .Add(AddWithValue("@Estatus", estatus, DbType.Int32))
                .Add(AddWithValue("@idServicio", idServicio, DbType.Int32))
            End With
            Return ExecuteNonQueryIdentity(cmd)
        End Function

        Public Function UpdateEstatusSuscripcion(ByVal idSuscripcion As Integer, ByVal estatus As Integer) As Integer
            Return CInt(ExecuteNonQuery(String.Format("UPDATE suscprotgt SET Estatus = {0} WHERE idSuscripcion = {1}", estatus, idSuscripcion)))
        End Function

        Public Function AddSuscripcionPendiente(ByVal idServicio As Integer, ByVal telefono As String, ByVal estatus As Integer, ByVal idContenido As Integer) As Integer
            Dim cmd As DbCommand = CreateCommand()
            Dim query As StringBuilder = New StringBuilder
            With query
                .Append("INSERT INTO protgtp ")
                .Append("(Telefono, idServicio, Reintentos, Estatus, IdContenido) ")
                .Append("VALUES ")
                .Append("(@Telefono, @idServicio, 0, @Estatus, @IdContenido) ")
            End With
            cmd.CommandText = query.ToString
            With cmd.Parameters
                .Add(AddWithValue("@Telefono", telefono, DbType.String))
                .Add(AddWithValue("@idServicio", idServicio, DbType.Int32))
                .Add(AddWithValue("@Estatus", estatus, DbType.Int32))
                .Add(AddWithValue("@IdContenido", idContenido, DbType.Int32))
            End With
            Return ExecuteNonQueryIdentity(cmd)
        End Function


    End Class
End Namespace

