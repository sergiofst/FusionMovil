Imports MySql.Data.MySqlClient
Imports System.Text

Public Class FavoritoDAO
    Inherits BaseDAO

    Public Sub New(ByVal dbConn As MySqlConnection)
        MyBase.New(dbConn)
    End Sub

    Public Function AddFavorito(ByVal telefono As String, ByVal estatus As Integer) As Integer
        Dim cmd As MySqlCommand = CreateCommand()
        cmd.CommandText = "INSERT INTO Favoritos (Telefono, Fecha, Estatus) VALUES (@Telefono, NOW(), @Estatus)"
        cmd.Parameters.AddWithValue("@Telefono", telefono)
        cmd.Parameters.AddWithValue("@Estatus", estatus)
        Return ExecuteNonQueryIdentity(cmd)
    End Function

    Public Function UpdateFavorito(ByVal idFavorito As Integer, ByVal estatus As Integer) As Integer
        Dim cmd As MySqlCommand = CreateCommand()
        cmd.CommandText = "UPDATE Favoritos SET Estatus = @Estatus WHERE idFavorito = @IdFavorito"
        cmd.Parameters.AddWithValue("@Estatus", estatus)
        cmd.Parameters.AddWithValue("@IdFavorito", idFavorito)
        Return ExecuteNonQuery(cmd)
    End Function


End Class
