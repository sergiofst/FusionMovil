Imports MySql.Data.MySqlClient
Imports System.Text
Imports System.Data.Common

Namespace DAO

    Public Class FavoritoDAO
        Inherits BaseDAO

        Public Sub New(ByVal connStr As ConnectionStringSettings)
            MyBase.New(connStr)
        End Sub

        Public Function AddFavorito(ByVal telefono As String, ByVal estatus As Integer) As Integer
            Dim cmd As DbCommand = CreateCommand()
            cmd.CommandText = "INSERT INTO Favoritos (Telefono, Fecha, Estatus) VALUES (@Telefono, NOW(), @Estatus)"
            cmd.Parameters.Add(AddWithValue("@Telefono", telefono, DbType.String))
            cmd.Parameters.Add(AddWithValue("@Estatus", estatus, DbType.Int32))
            Return ExecuteNonQueryIdentity(cmd)
        End Function

        Public Function UpdateFavorito(ByVal idFavorito As Integer, ByVal estatus As Integer) As Integer
            Dim cmd As DbCommand = CreateCommand()
            cmd.CommandText = "UPDATE Favoritos SET Estatus = @Estatus WHERE idFavorito = @IdFavorito"
            cmd.Parameters.Add(AddWithValue("@Estatus", estatus, DbType.Int32))
            cmd.Parameters.Add(AddWithValue("@IdFavorito", idFavorito, DbType.Int32))
            Return CInt(ExecuteNonQuery(cmd))
        End Function


    End Class
End Namespace

