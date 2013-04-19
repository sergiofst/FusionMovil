Imports System.Text
Imports System.Data.Common
Imports System.Configuration

Namespace DAO


    Public Class TransaccionesDAO
        Inherits BaseDAO

        Public Const INICIO As Integer = 0
        Public Const APROBADA As Integer = 1
        Public Const DESCARGADA As Integer = 2
        Public Const CANCELADA As Integer = 3
        Public Const [ERROR] As Integer = 4
        Public Const REGALO As Integer = 5
        Public Const REGALO_DESCARGADO As Integer = 6

        Public Sub New(ByVal connStr As ConnectionStringSettings)
            MyBase.New(connStr)
        End Sub

        Public Function AddTransaccion(ByVal idContenido As Integer, ByVal idSuscripcion As Integer, ByVal telefono As String, ByVal estatus As Integer) As Integer
            Dim query As StringBuilder = New StringBuilder
            With query
                .Append("INSERT INTO Transacciones (idContenido, transactionId, idSuscripcion,  Estatus, Fecha, Telefono) ")
                .Append("VALUES (@idContenido, 0, @idSuscripcion, @Estatus, NOW(), @Telefono) ")
            End With
            Dim cmd As DbCommand = CreateCommand()
            cmd.CommandText = query.ToString
            With cmd.Parameters
                .Add(AddWithValue("@idContenido", idContenido, DbType.Int32))
                .Add(AddWithValue("@idSuscripcion", idSuscripcion, DbType.Int32))
                .Add(AddWithValue("@Estatus", estatus, DbType.Int32))
                .Add(AddWithValue("@Telefono", telefono, DbType.String))
            End With
            Return ExecuteNonQueryIdentity(cmd)
        End Function

        Public Function UpdateTransaccion(ByVal idTransaccion As Integer, ByVal transactionid As Integer, ByVal estatus As Integer) As Integer
            Return CInt(ExecuteNonQuery(String.Format("UPDATE Transacciones SET Estatus = {0}, transactionid = {1} WHERE idTransaccion = {2}", estatus, transactionid, idTransaccion)))
        End Function

        Public Function UpdateTransaccion(ByVal idTransaccion As Integer, ByVal estatus As Integer) As Integer
            Return CInt(ExecuteNonQuery(String.Format("UPDATE Transacciones SET Estatus = {0} WHERE idTransaccion = {1}", estatus, idTransaccion)))
        End Function

        Public Function GetTransaccion(ByVal idTransaccion As Integer) As DataRow
            Dim dsResult As DataSet = GetDataSet("SELECT idTransaccion, transactionId, idContenido, Estatus, Telefono FROM Transacciones WHERE idTransaccion = " & idTransaccion.ToString)
            If dsResult.Tables(0).Rows.Count > 0 Then
                Return dsResult.Tables(0).Rows(0)
            End If
            Return Nothing
        End Function

        Public Function GetTransaccionByTransactionId(ByVal transactionId As Integer) As DataRow
            Dim dsResult As DataSet = GetDataSet("SELECT idTransaccion, transactionId, idContenido, Telefono, Estatus FROM Transacciones WHERE transactionId = " & transactionId.ToString)
            If dsResult.Tables(0).Rows.Count > 0 Then
                Return dsResult.Tables(0).Rows(0)
            End If
            Return Nothing
        End Function



    End Class


End Namespace