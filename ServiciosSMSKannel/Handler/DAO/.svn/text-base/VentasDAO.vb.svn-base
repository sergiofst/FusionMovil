Imports System.Data.Common

Namespace DAO
    Public Class VentasDAO
        Inherits BaseDAO

        Public Sub New(ByVal connStr As ConnectionStringSettings)
            MyBase.New(connStr)
        End Sub

        Public Function AddVenta(ByVal idServicio As Integer, ByVal idServicioClave As Integer, ByVal idContenido As Integer, ByVal idContenidoClave As Integer, ByVal telefono As String, ByVal marcacion As String, ByVal smscid As String) As Integer
            Dim cmd As DbCommand = CreateCommand()
            Dim query As StringBuilder = New StringBuilder
            With query
                .Append("INSERT INTO Ventas ")
                .Append("(idServicio, idServicioClave, idContenido, idContenidoClave, Telefono, Marcacion, Fecha, smscid) ")
                .Append("VALUES ")
                .Append("(@idServicio, @idServicioClave, @idContenido, @idContenidoClave, @Telefono, @Marcacion, @Fecha, @smscid) ")
            End With
            cmd.CommandText = query.ToString
            With cmd.Parameters
                .Add(AddWithValue("@idServicio", idServicio))
                .Add(AddWithValue("@idServicioClave", idServicioClave))
                .Add(AddWithValue("@idContenido", idContenido))
                .Add(AddWithValue("@idContenidoClave", idContenidoClave))
                .Add(AddWithValue("@Telefono", telefono))
                .Add(AddWithValue("@Marcacion", marcacion))
                .Add(AddWithValue("@Fecha", Date.Now))
                .Add(AddWithValue("@smscid", smscid))
            End With
            Return ExecuteNonQueryIdentity(cmd)
        End Function

    End Class
End Namespace

