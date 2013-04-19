Imports System.Data.Common

Namespace DAO
    Public Class HistorialDAO
        Inherits BaseDAO

        Public Const MO As Integer = 0
        Public Const MT As Integer = 1

        Public Sub New(ByVal connStr As ConnectionStringSettings)
            MyBase.New(connStr)
        End Sub

        Public Function AddHistorial(ByVal telefono As String, ByVal marcacion As String, ByVal texto As String, ByVal tipo As Integer, ByVal smsc As String) As Integer
            Dim cmd As DbCommand = CreateCommand()
            cmd.CommandText = "INSERT INTO Historial (Telefono, Marcacion, Texto, Tipo, Fecha, smscid) VALUES (@Telefono, @Marcacion, @Texto, @Tipo, @Fecha, @smsc)"
            With cmd.Parameters
                .Add(AddWithValue("Telefono", telefono))
                .Add(AddWithValue("Marcacion", marcacion))
                .Add(AddWithValue("Texto", texto))
                .Add(AddWithValue("Tipo", tipo))
                .Add(AddWithValue("Fecha", Date.Now))
                .Add(AddWithValue("smsc", smsc))
            End With
            Return ExecuteNonQueryIdentity(cmd)
        End Function
    End Class
End Namespace

